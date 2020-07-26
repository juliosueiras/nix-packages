{
  description = "Julio's Personal Nix Packages";

  inputs.nixpkgs.url =
    "github:NixOS/nixpkgs/469f14ef0fade3ae4c07e4977638fdf3afc29e08";

  inputs.mixnix = {
    url = "git+https://gitlab.com/manveru/mixnix";
    flake = false;
  };

  inputs.clj2nix = {
    url = "github:hlolli/clj2nix";
    flake = false;
  };

  edition = 201909;

  outputs = { self, nixpkgs, mixnix, clj2nix }:
    let
      pkgs = (import nixpkgs {
        system = "x86_64-linux";
        config = { allowUnfree = true; };
        overlays = [
          (self: super: {
            mix2nix = (super.callPackage "${mixnix}/nix/mix2nix.nix" {});
            clj2nix = (super.callPackage clj2nix { });
          })
        ];
      });
    in {
      packages.x86_64-linux = {
        asciinema-server = pkgs.callPackage ./pkgs/asciinema-server {};
      };

      overlays = pkgs.overlays;

      devShell.x86_64-linux = let
        overlay = pkgs.writeText "overlay" ''
          self: super: with super.lib; let overlays = (builtins.getFlake(builtins.getEnv "PWD")).outputs.overlays;
          in foldl' (flip extends) (_: super) overlays self
        '';
        nixpkgs-overlay =
          pkgs.runCommand "overlays" { preferLocalBuild = true; } ''
            mkdir $out
            cp ${overlay} $out/overlays.nix
          '';
      in pkgs.mkShell {
        NIX_PATH = "nixpkgs=${nixpkgs}:nixpkgs-overlays=${nixpkgs-overlay}";

        buildInputs = [
          pkgs.mix2nix.mix2nix 
          pkgs.clj2nix 
          pkgs.elixir_1_7
          pkgs.leiningen
        ];
      };
    };
}
