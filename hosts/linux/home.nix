{ inputs, pkgs, ... }:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../../modules/zsh
    # ../../modules/nixvim
    ../../modules/neovim
  ];

  home = {
    username = "bala01";
    homeDirectory = "/home/bala01";

    stateVersion = "24.05";

    packages = with pkgs; [
      ghostty
      nerd-fonts.jetbrains-mono
    ];

    # fonts.packages = with pkgs; [
    #   nerd-fonts.jetbrains-mono
    # ];
  };

  xdg.configFile."ghostty" = {
    recursive = true;
    source = ../../modules/ghostty/nixos;
  };

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };

  fonts.fontconfig.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

}
