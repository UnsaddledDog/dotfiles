{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    terminal = "kitty";
    theme = ./theme.rasi;
    font = "JetBrainsMono Nerd Font 14";
  };
}
