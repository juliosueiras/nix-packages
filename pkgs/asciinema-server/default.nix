{ stdenv, mix2nix, fetchgit, callPackage, elixir_1_7, rebar3, rebar, ... }:

let 
  version = "v20200523";
  src = fetchgit {
    url = "https://github.com/asciinema/asciinema-server";
    rev = version;
    sha256 = "1dgxmxqjr44cvbc9fqkpgf7wg7ybxqms877wx66qxgjibpq5658q";
    fetchSubmodules = true;
  };

  mix-deps = stdenv.mkDerivation {
    name = "asciinema-mix-deps";
    inherit src;

    buildInputs = [ 
      elixir_1_7
    ];

    buildPhase = ''
      export MIX_HOME=$TMP
      export HEX_HOME=$TMP
      cp -a ${rebar3}/bin/rebar3 $TMP/
      cp -a ${rebar}/bin/rebar $TMP/
      mix local.hex --force
      mix do deps.get --only prod
    '';

    installPhase = ''
      mkdir -p $out
      cp -a deps/* $out
    '';

    outputHashAlgo = "sha256";
    outputHashMode = "recursive";
    outputHash = "HNpj8Z6c99r91WMXhGpzR9UpoYpnX9kwdslIGtvZ1Ls=";
  };

  vt = callPackage ./vt/default.nix {
    asciinemaServerSrc = src;
  };

  assets = callPackage ./assets/default.nix {
    asciinemaServerSrc = src;
  };
in mix2nix.mkMixPackage {
  inherit version src;

  elixir = elixir_1_7;

  name = "asciinema-server";

  preBuild = ''
    mkdir -p priv/{vt,static}
    cp ${vt}/*.js priv/vt/
    cp -a ${assets}/static/* priv/static/
    chmod -R +rw priv/*
    export MIX_ENV=prod
    mkdir deps
    cp -a ${mix-deps}/* deps
    mkdir $TMP/.mix
    export MIX_HOME=$TMP/.mix
    cp -a ${rebar3}/bin/rebar3 $TMP/.mix/
    cp -a ${rebar}/bin/rebar $TMP/.mix/
    chmod -R +rw deps
    mix deps.compile 
    mix phx.digest --no-deps-check
  '';

  postBuild = ''
    mix release
  '';

  postInstall = ''
    rm -rf $out/lib
    cp -a .iex.exs $out/
    cp -a _build/prod/rel/asciinema/releases/0.0.1/asciinema.tar.gz $out/
    cd $out/
    tar -xzf asciinema.tar.gz
    rm asciinema.tar.gz
    cd -
    cp -a config/custom.exs.sample $out/etc/custom.exs
  '';

  mixNix = ./mix.nix;
}
