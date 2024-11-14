{
  inputs = {
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      numpy-financial = pkgs.python3Packages.callPackage ./numpy-financial.nix { };
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          numpy-financial
        ];
      };
      packages = {
        default = numpy-financial;
      };
    }
  );
}
