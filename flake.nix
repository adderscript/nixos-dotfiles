{
  description = "Very cool nixos config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    hjem.url = "github:feel-co/hjem";
    home-manager.url = "github:nix-community/home-manager";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs =
    {
      nixpkgs,
      hjem,
      home-manager,
      zen-browser,
      ...
    }@inputs:
    {
      nixosConfigurations.medium-guy = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/medium-guy/configuration.nix
          hjem.nixosModules.default
          home-manager.nixosModules.home-manager
          {
            home-manager.users.alasdair = import ./home.nix;
          }
        ];
      };
      nixosConfigurations.large-guy = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./hosts/large-guy/configuration.nix
          hjem.nixosModules.default
          home-manager.nixosModules.home-manager
          {
            home-manager.users.alasdair = import ./home.nix;
          }
        ];
      };
    };
}
