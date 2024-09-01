{

  description = "nixderp NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ... }@inputs: {
    nixosConfigurations.nixderp = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
				./hosts/msi-x470
				home-manager.nixosModules.home-manager {
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.backupFileExtension = "backup";
					home-manager.extraSpecialArgs = { inherit inputs; };
					home-manager.users.thomas = import ./home;
				}
      ];
    };
  };
}