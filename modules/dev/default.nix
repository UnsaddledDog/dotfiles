{ pkgs, ... }:

{
  imports = [
    ../git
  ];

  home.packages = with pkgs; [
    # Utilities
    wget
    curl
    ripgrep

    # Languages
    gcc
    dotnet-sdk_8
    temurin-jre-bin

    glfw
  ];
}
