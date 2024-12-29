{ pkgs, inputs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    # ../../modules/nixvim
    ../../modules/neovim
    ../../modules/zsh
    ../../modules/hyprland
    ../../modules/kitty
    ../../modules/waybar
    ../../modules/hyprpaper
    ../../modules/rofi
    ../../modules/hyprlock
    ../../modules/zathura
    ../../modules/git
    ../../modules/dev
  ];

  gtk = {
    enable = true;

    cursorTheme = {
      name = "BreezeX-RosePine-Linux";
      package = pkgs.rose-pine-cursor;
      size = 24;
    };

    theme = {
      name = "rose-pine";
      package = pkgs.rose-pine-gtk-theme;
    };

    iconTheme = {
      name = "rose-pine";
      package = pkgs.rose-pine-icon-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home = {
    username = "gergo";
    homeDirectory = "/home/gergo";

    stateVersion = "24.05";

    packages = with pkgs; [
      rose-pine-icon-theme
      rose-pine-gtk-theme
      rose-pine-cursor
    ];

    sessionVariables = {
      GTK_THEME = "rose-pine";
    };
  };

  programs = {
    home-manager.enable = true;
  };
}
