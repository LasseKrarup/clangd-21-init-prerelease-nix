{
  description = "clangd-21 package";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux"; # adjust for your system
      pkgs = nixpkgs.legacyPackages.${system};
    in { packages.${system}.default = pkgs.callPackage ./clangd-21.nix { }; };
}
