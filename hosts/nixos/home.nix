{ pkgs, inputs, ... }:

{
	imports = [
		inputs.nixvim.homeManagerModules.nixvim
		../../modules/nvim
		../../modules/zsh
		../../modules/hyprland
		../../modules/kitty
		../../modules/waybar
		../../modules/hyprpaper
	];
  
	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		fastfetch
	];

	home.username = "gergo";
	home.homeDirectory = "/home/gergo";
	
	home.stateVersion = "24.05";
}
