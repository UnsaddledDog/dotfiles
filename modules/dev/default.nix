{ pkgs, ... }: 

{
    home.packages = with pkgs; [
        fastfetch
        ripgrep
        gcc
        dotnet-sdk_8
        temurin-jre-bin
        glfw
    ];
}
