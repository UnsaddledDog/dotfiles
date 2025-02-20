{ ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      rebuild = "darwin-rebuild switch --flake ~/nix-config/#darwin";
      vim-help = "less ~/dotfiles/modules/neovim/help.txt";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ ];
      theme = "alanpeabody-custom";
    };
  };

  # Ensure the custom theme file is placed in the correct location
  home.file.".oh-my-zsh/custom/themes/alanpeabody-custom.zsh-theme".source =
    ./alanpeabody-custom.zsh-theme;

  home.sessionVariables = {
    # Set ZSH_CUSTOM to ensure Oh-My-Zsh picks up custom themes and plugins
    ZSH_CUSTOM = "$HOME/.oh-my-zsh/custom";
  };
}
