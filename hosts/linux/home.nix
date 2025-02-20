{ inputs, pkgs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../../modules/zsh
    # ../../modules/nixvim
    ../../modules/neovim
  ];

  home = {
    username = "gergo";
    homeDirectory = "/home/gergo";

    stateVersion = "24.05";

    packages = with pkgs; [
      # (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      ghostty
    ];
  };

  xdg.configFile."ghostty" = {
    recursive = true;
    source = ../../modules/ghostty/nixos;
  };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };

  fonts.fontconfig.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

}
