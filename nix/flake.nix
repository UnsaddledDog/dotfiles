{
    description = "UnsaddledDog's flake with support for nixos, nix and darwin";

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
            inputs.nixpkgs.follows = "nixpkgs";
        };

        hyprland = {
            url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
        };

        hyprland-plugins = {
            url = "github:hyprwm/hyprland-plugins";
            inputs.hyprland.follows = "hyprland";
        };

        hyprpanel = {
            url = "github:Jas-SinghFSU/HyprPanel";
        };

        rose-pine-hyprcursor = {
            url = "github:ndom91/rose-pine-hyprcursor";
        };

        nix-homebrew = {
            url = "github:zhaofengli-wip/nix-homebrew";
        };

		neovim-nightly-overlay = {
			url = "github:nix-community/neovim-nightly-overlay";
		};

        inputs.nixos-hardware = {
            url = "github:NixOS/nixos-hardware/master";
        };

		# vim-plugins = {
		# 	url = "path:./modules/neovim/plugins";
		# 	# inputs.nixpkgs.follows = "nixpkgs";
		# };

        # homebrew-core = {
        #     url = "github:homebrew/homebrew-core";
        #     flake = false;
        # };
        #
        # homebrew-cask = {
        #     url = "github:homebrew/homebrew-cask";
        #     flake = false;
        # };
        #
        # homebrew-bundle = {
        #     url = "github:homebrew/homebrew-bundle";
        #     flake = false;
        # };
        #
        # homebrew-nikitabobko = {
        #     url = "github:nikitabobko/aerospace";
        #     flake = false;
        # };
    };

    outputs = { self, nix-darwin, nixpkgs, home-manager, nixvim, hyprland, hyprpanel, nix-homebrew, neovim-nightly-overlay,
        nixos-hardware,
        # homebrew-core, homebrew-cask, homebrew-bundle, homebrew-nikitabobko,
        ... }@inputs: {

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

                nix-homebrew.darwinModules.nix-homebrew {
                    nix-homebrew = {
                        enable = true;
                        user = "gergo";
                    };
                }
            ];
        };

        nixosConfigurations.iso = nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./hosts/isoimage/configuration.nix
                nixos-hardware.nixosModules.apple-macbook-pro-14-1
            ];
        };

        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = {inherit inputs;};
            modules = [
                ./hosts/nixos/configuration.nix
                ./overlays
                home-manager.nixosModules.home-manager {
                    home-manager = {
                        useGlobalPkgs = true;
                        useUserPackages = true;
                        users.gergo = import ./hosts/nixos/home.nix;
                        extraSpecialArgs = { inherit inputs; };
                    };
                }
            ];
        };

        homeConfigurations.linux = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.x86_64-linux;
            extraSpecialArgs = {inherit inputs ;};
            modules = [
                ./hosts/linux/home.nix
            ];
        };
    };
}
