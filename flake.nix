{
  description = "Very cool nixos config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    hjem.url = "github:feel-co/hjem";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs =
    {
      nixpkgs,
      hjem,
      home-manager,
      ...
    }:
    {
      nixosConfigurations.medium-guy = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./configuration.nix
          hjem.nixosModules.default
          home-manager.nixosModules.home-manager
        ];
      };
    };
}
