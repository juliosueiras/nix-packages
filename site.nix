{ self, pkgs, ... }:

{
  copyDocs = let
    eval = import (pkgs.path + "/nixos/lib/eval-config.nix") {
      baseModules = [
        self.nixosModules.asciinema-server
      ];
      modules = [];
    };
    docs = (pkgs.nixosOptionsDoc {
      options = eval.options;
    }).optionsAsciiDoc;

    copyScript = pkgs.writeScript "copy-docs" ''
          mkdir -p ./docs/modules/ROOT/pages
          echo "${docs}" > ./docs/modules/ROOT/pages/asciinema-server.adoc
          echo "Docs" > ./docs/modules/ROOT/pages/index.adoc
    '';
  in {
    type = "app";
    program = "${copyScript}";
  };

  generateSite = let
    generateSite = pkgs.writeScript "generate-site" ''
          ${self.defaultApp.x86_64-linux.program}
          ${pkgs.antora}/bin/antora generate antora-playbook.yml
    '';
  in {
    type = "app";
    program = "${generateSite}";
  };

  serveSite = let
    serveSite = pkgs.writeScript "serve-site" ''
      ${pkgs.python3}/bin/python -m http.server --directory ./build/site
    '';
  in {
    type = "app";
    program = "${serveSite}";
  };
}
