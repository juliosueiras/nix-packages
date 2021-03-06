{ asciinemaServerSrc, stdenv, leiningen, fetchgit, jdk, ... }:

let
  deps = stdenv.mkDerivation {
    name = "asciinema-vt-deps";

    buildInputs = [ leiningen ];

    patches = [ ./add_deps.patch ];

    src = "${asciinemaServerSrc}/vt";

    buildPhase = ''
      export LEIN_HOME=$TMP
      lein deps
    '';

    installPhase = ''
      mkdir -p $out/.m2
      cp -a .m2/* $out/.m2
      find $out/.m2 -type f \! -regex '.+\(pom\|jar\|xml\|sha1\)' -delete
    '';
    outputHashAlgo = "sha256";
    outputHashMode = "recursive";
    outputHash = "psKtPjwO0/Luv663aIC7GomH18mOCbWJJrXhAgBqw/M=";
  };

in stdenv.mkDerivation {
  name = "asciinema-server-vt";

  buildInputs = [ leiningen ];

  src = "${asciinemaServerSrc}/vt";

  patches = [ ./diff.patch ];

  buildPhase = ''
    export LEIN_HOME=$TMP
    export LEIN_OFFLINE=true
    cp -a ${deps}/.m2 .m2
    lein cljsbuild once main
  '';

  installPhase = ''
    mkdir -p $out
    cp main.js $out/
    cp liner.js $out/
  '';
}

