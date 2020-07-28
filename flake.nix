{
  description = "Julio's Personal Nix Packages";

  inputs.nixpkgs.url =
    "github:NixOS/nixpkgs/469f14ef0fade3ae4c07e4977638fdf3afc29e08";

  edition = 201909;

  outputs = { self, nixpkgs }:
    let
      _pkgs = (import nixpkgs {
        system = "x86_64-linux";
      });

      mixnix = _pkgs.fetchgit {
        url = "https://gitlab.com/manveru/mixnix";
        rev = "779daa4eb3ecb6d8db05e4619febed5087491488";
        sha256 = "0p5j1f8x8syw5wd5ylwgdx9213xji55050s6yvrni9h9x8nzl3z2";
      };

      clj2nix = _pkgs.fetchgit {
        url = "https://github.com/hlolli/clj2nix";
        rev = "3ab3480a25e850b35d1f532a5e4e7b3202232383";
        sha256 = "1lry026mlpxp1j563qs13nhxf37i2zpl7lh0lgfdwc44afybqka6";
      };

      pkgs = (import nixpkgs {
        system = "x86_64-linux";
        config = { allowUnfree = true; };
        overlays = [
          (self: super: {
            mix2nix = (super.callPackage "${mixnix}/nix/mix2nix.nix" { });
            clj2nix = (super.callPackage clj2nix { });
          })
        ];
      });
    in {
      packages.x86_64-linux = {
        asciinema-server = pkgs.callPackage ./pkgs/asciinema-server { };
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

        buildInputs =
          [ pkgs.mix2nix.mix2nix pkgs.clj2nix pkgs.elixir_1_7 pkgs.leiningen ];
      };

      nixosModules.asciinema-server = { config, lib, pkgs, ... }:
        with lib;
        let
          cfg = config.services.asciinema-server;

          customConfig = pkgs.writeText "custom.exs" ''
            use Mix.Config
            env = &System.get_env/1
            config :asciinema, Asciinema.FileStore.Local, path: env.("UPLOADS_PATH")
          '';
        in {
          options.services.asciinema-server = {
            enable = mkOption {
              type = types.bool;
              default = false;
              description = ''
                Enable Asciinema Server
              '';
            };

            dbpassword = mkOption {
              type = types.str;
              default = "test";
              description = ''
                Password for DB (self-provided database, instead of external database)
              '';
            };

            host = mkOption {
              type = types.str;
              default = "";
              description = ''
                  Hostname for the Asciinema site
              '';
            };

            cert = mkOption {
              type = types.path;
              default = "";
              description = ''
                  SSL Certificate
              '';
            };

            key = mkOption {
              type = types.path;
              default = "";
              description = ''
                  SSL Key
              '';
            };
          };

          config = mkIf cfg.enable {

            networking.firewall = { allowedTCPPorts = [ 80 443 ]; };

            systemd.tmpfiles.rules = [
              "d /var/lib/asciinema-server 0755 asciinema asciinema -"
              "d /etc/asciinema-server/uploads 0755 asciinema asciinema -"
            ];

            systemd.services.asciinema-server = {
              after = [ "network.target" ];
              wantedBy = [ "multi-user.target" ];
              path = [ pkgs.bash pkgs.nodejs pkgs.gawk ];

              environment = {
                DATABASE_URL =
                  "postgresql://asciinemadb:${cfg.dbpassword}@localhost/asciinema";
                UPLOADS_PATH = "/etc/asciinema-server/uploads/";
                URL_HOST = "${cfg.host}";
                URL_PORT = "443";
                URL_SCHEME = "https";
                PORT = "3000";
              };

              preStart = ''
                rm -rf /var/lib/asciinema-server/*
                cp -a ${self.packages.x86_64-linux.asciinema-server}/* /var/lib/asciinema-server/
                cp -a ${self.packages.x86_64-linux.asciinema-server}/.iex.exs /var/lib/asciinema-server/
                chmod -R +rw /var/lib/asciinema-server
                chown -R asciinema:asciinema /var/lib/asciinema-server
                cp ${customConfig} /var/lib/asciinema-server/etc/custom.exs
                /var/lib/asciinema-server/bin/asciinema migrate_and_seed
              '';
              serviceConfig = {
                Type = "simple";
                User = "asciinema";
                PrivateTmp = "true";
                Group = "asciinema";
                TimeoutSec = "infinity";
                Restart = "on-failure";
                ExecStart = ''
                  /var/lib/asciinema-server/bin/asciinema foreground
                '';
              };
            };

            services.nginx = {
              enable = true;
              virtualHosts = {
                "${cfg.host}" = {
                  forceSSL = true;
                  sslCertificate = cfg.cert;
                  sslCertificateKey = cfg.key;
                  locations."/" = {
                    proxyPass = "http://localhost:3000";
                  };
                };
              };
            };

            services.redis.enable = true;

            users.groups.asciinema = {};
            users.users.asciinema = {
              group = "asciinema";
              shell = "${pkgs.bash}/bin/bash";
            };

            services.postgresql = {
              enable = true;
              ensureDatabases = [ "asciinema" ];

              initialScript = pkgs.writeText "init.sql" ''
                CREATE ROLE asciinemadb WITH LOGIN NOCREATEDB NOCREATEROLE PASSWORD '${cfg.dbpassword}'
                GRANT ALL PRIVILEGES ON DATABASE asciinema TO asciinemadb;
              '';
            };
          };
        };
    };
}
