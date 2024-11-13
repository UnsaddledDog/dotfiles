{ pkgs, inputs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [
    # Language servers
    lua-language-server
    nil
    roslyn-ls
    csharp-ls
    glsl_analyzer
    # omnisharp-roslyn

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

    dotnet-sdk_8
  ];

  #home.file."./.config/nvim/" = {
  #	source = ./nvim;
  #	recursive = true;
  #  };
}
