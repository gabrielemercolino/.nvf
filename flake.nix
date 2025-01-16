{
  description = "A nvf configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    flake-parts,
    pre-commit-hooks,
    nvf,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nvim =
          (nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [./config];
          })
          .neovim;
      in {
        checks = {
          default = pre-commit-hooks.lib.${system}.run {
            src = ./.;
            hooks = {
              statix.enable = true;
              nixfmt-rfc-style.enable = true;
            };
          };
        };

        formatter = pkgs.alejandra;

        packages.default = nvim;
      };
    };
}
