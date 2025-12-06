{
  description = "A nvf configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    flake-parts,
    nvf,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];

      perSystem = {pkgs, ...}: let
        nvim =
          (nvf.lib.neovimConfiguration {
            inherit pkgs;
            modules = [./config];
          })
          .neovim;
      in {
        formatter = pkgs.alejandra;
        packages.default = nvim;
      };

      flake = {
        homeManagerModules.default = {
          config,
          pkgs,
          ...
        }: {
          imports = [nvf.homeManagerModules.default];

          programs.nvf = {
            settings = import ./config {inherit config pkgs;};
          };
        };
      };
    };
}
