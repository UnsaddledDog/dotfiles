{ pkgs, modulesPath, ... }: {
    imports = [
        "${modulesPath}/installer/cd-dvd/installation-cd-minimal.nix"
    ];

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    nixpkgs.hostPlatform = "x86_64-linux";
}
