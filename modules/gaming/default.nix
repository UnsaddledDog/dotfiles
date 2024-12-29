{ pkgs, ... }:

{
  programs = {
    steam.enable = true;
    steam.gamescopeSession.enable = true;
    gamemode.enable = true;
  };

  environment.systemPackages = with pkgs; [
    protonup
    mangohud
    lutris
  ];

  hardware.xone.enable = true;

  environment.sessionVariables = {
    # proton
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "~/.steam/root/compatibilitytools.d";
  };
}
