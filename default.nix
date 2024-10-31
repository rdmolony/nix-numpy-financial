let
  pkgs = import <nixpkgs> { };
in
{
  numpy-financial = pkgs.python312Packages.callPackage ./numpy-financial.nix { };
}