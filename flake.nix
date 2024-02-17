{
  description = "My nvim flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, neovim-nightly-overlay, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem
      (system:
        let
          name = "nixvim";
          src = ./.;
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          packages.default = pkgs.stdenv.mkDerivation {
              inherit name src;
              installPhase = ''
                mkdir $out
                echo $src
                echo $out
                cp -r $src $out
                ln -s ~/.config/nixvim $out
                export NVIM_APPNAME=nixvim
              '';
            };
        });
}
