{ inputs, pkgs, ... }: 

{
    imports = [
        inputs.nixvim.homeManagerModules.nixvim
        ../../modules/zsh
        ../../modules/nixvim
    ];

    home = {
        username = "gergo";
        homeDirectory = "/home/gergo";

        stateVersion = "24.05";

        packages = with pkgs; [ 
            (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
        ];
    };

    programs = {
        home-manager.enable = true;
        git.enable = true;
    };

    fonts.fontconfig.enable = true;

    # Nicely reload system units when changing configs
    systemd.user.startServices = "sd-switch";

}
