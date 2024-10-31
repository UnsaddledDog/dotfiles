{ pkgs, inputs, config, ... }:

{
    imports = [
        inputs.nixvim.homeManagerModules.nixvim
        # ../../modules/nixvim
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

    xdg.configFile."aerospace" = {
        recursive = true;
        source = ../../../config/aerospace;
    };

    programs = {
        home-manager.enable = true;
    };
}
