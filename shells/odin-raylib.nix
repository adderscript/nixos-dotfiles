{
  description = "odin raylib";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          odin
          raylib
          pkg-config
        ];

        LD_LIBRARY_PATH = "${pkgs.raylib}/lib";
        LIBRARY_PATH = "${pkgs.raylib}/lib";
        CPATH = "${pkgs.raylib}/include";
      };
    };
}
