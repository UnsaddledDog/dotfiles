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
		../../modules/rofi
	];
  
	programs.home-manager.enable = true;

	home.packages = with pkgs; [
		fastfetch
    macchina
    nitch
	];

	home.username = "gergo";
	home.homeDirectory = "/home/gergo";
	
	home.stateVersion = "24.05";
}
