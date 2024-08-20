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

  home = {
    username = "gergo";
    homeDirectory = "/home/gergo";

	  stateVersion = "24.05";

    packages = with pkgs; [
      fastfetch
      macchina
      nitch
    ];
  };

	programs = {
    home-manager.enable = true;
  };
}
