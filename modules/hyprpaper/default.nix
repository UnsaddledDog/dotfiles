{
  services.hyprpaper = {
    enable = true;
    settings = {
      /*
        preload = ["~/nix-config/resources/wallpapers/bay.JPG"];
        wallpaper = ",~/nix-config/resources/wallpapers/bay.JPG";
      */
      preload = [
        "~/Pictures/the_wild_robot.png"
        "~/Pictures/gowall/the_wild_robot.png"
      ];
      wallpaper = [ ",~/Pictures/gowall/the_wild_robot.png" ];
    };
  };
}
