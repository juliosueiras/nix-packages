{stdenv, asciinemaServerSrc, callPackage, nodejs-10_x, ... }:

stdenv.mkDerivation {
  name = "asciinema-server-assets";
  src = (callPackage ./deps.nix {
    nodejs = nodejs-10_x;
    src = asciinemaServerSrc; 
  }).package;

  buildInputs = [
    nodejs-10_x
  ];

  buildPhase = ''
    cd lib/node_modules/asciinema-assets
    npm run deploy
  '';

  installPhase = ''
    mkdir -p $out
    cp js/* $out/
  '';
}
