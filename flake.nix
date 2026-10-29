{
  description = "Noxilium NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.noxilium = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./hardware-configuration.nix
        ./modules/system.nix
        ./modules/packages.nix
        ./modules/users.nix
      ];
    };
  };
}
