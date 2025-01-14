{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [
    # Language servers
    lua-language-server
    nil
    # glsl_analyzer
    csharp-ls

    # Formatters
    stylua
    prettierd
    shfmt
    csharpier
    nixfmt-rfc-style

    # Dependencies
    tree-sitter
    gcc
    gnumake
    unzip
    luarocks
    nodejs_22
    lua
    wget
    fd
    cargo
    gzip
    gnutar
    fzf
    ripgrep
  ];

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
}
