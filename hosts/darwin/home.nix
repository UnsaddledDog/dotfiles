{
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ../../modules/neovim
    ../../modules/zsh
    ../../modules/dev
    ../../modules/git
  ];

  home = {
    stateVersion = "24.05";
    packages = with pkgs; [
    ];
  };

  xdg.configFile."ghostty" = {
    recursive = true;
    source = ../../modules/ghostty/darwin;
  };

  # xdg.configFile."aerospace" = {
  #   recursive = true;
  #   source = ../../../config/aerospace;
  # };

  programs = {
    home-manager.enable = true;
  };
}
