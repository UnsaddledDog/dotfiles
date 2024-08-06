{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };

    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
  	url = "github:nix-community/home-manager";
     	inputs.nixpkgs.follows = "nixpkgs";
    };

		nixvim = {
        url = "github:nix-community/nixvim";
        # If using a stable channel you can use `url = "github:nix-community/nixvim/nixos-<version>"`
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nix-darwin, nixpkgs, home-manager, nixvim, ... }@inputs: {
    darwinConfigurations.darwin = nix-darwin.lib.darwinSystem {
      system = "x86_64-darwin";
      modules = [
				./hosts/darwin/configuration.nix	

				home-manager.darwinModules.home-manager {
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.users.gergo = import ./hosts/darwin/home.nix;
					home-manager.extraSpecialArgs = { inherit inputs; };
				}
      ];
    };
	nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
		system = "x86_64-linux";
	      specialArgs = {inherit inputs;};
	      modules = [
		./hosts/nixos/configuration.nix
					#./modules/home-manager
		inputs.home-manager.nixosModules.default
	      ];
	    };

    # Expose the package set, including overlays, for convenience.
    #darwinPackages = self.darwinConfigurations."simple".pkgs;
  };
}
