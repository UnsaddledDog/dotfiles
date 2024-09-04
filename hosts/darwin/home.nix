{ pkgs, inputs, ... }:

{
    imports = [
        inputs.nixvim.homeManagerModules.nixvim
        ../../modules/nvim
        ../../modules/zsh
        ../../modules/dev
    ];

    home = {
        stateVersion = "24.05";
        packages = with pkgs; [
        ];
    };

    programs = {
        home-manager.enable = true;
    };
}
