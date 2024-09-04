{ inputs, config, pkgs, lib, services, ... }:

{
    # Enable flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Allow unfree packages  
    nixpkgs.config.allowUnfree = true;

    # Enable nix-daemon service
    services.nix-daemon.enable = true;

    # Set user
    users.users.gergo = {
        name = "gergo";
        home = "/Users/gergo";
        shell = pkgs.zsh;
    };

    environment.systemPackages = with pkgs; [
    ];

    programs.zsh.enable = true;
}
