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
    glsl_analyzer
    csharp-ls
    cmake-language-server
    clang-tools
    csslint
    vscode-langservers-extracted
    omnisharp-roslyn

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
    dotnet-sdk
    mono
    vscode
  ];

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
}
