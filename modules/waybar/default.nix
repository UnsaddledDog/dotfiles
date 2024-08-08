{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        /* output = [
          "eDP-1"
          "HDMI-A-1"
        ]; */
        modules-left = [ "hyprland/workspaces"];
        # modules-center = [ "hyprland/window" /* "custom/hello-from-waybar" */ ];
        modules-right = [ "pulseaudio" "memory" "cpu" "clock" ];

        "hyprland/workspaces" = {
          active-only = false;
          persistent-workspaces = {
            "*" = 6;
          };

          format = "{icon}";
          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            /* urgent = "";
            active = "";
            default = "󰧞";
            sort-by-number = true; */
          };
        };

        /* "custom/hello-from-waybar" = {
          format = "hello {}";
          max-length = 40;
          interval = "once";
          exec = pkgs.writeShellScript "hello-from-waybar" ''
            echo "from within waybar"
          '';
        }; */
      };
    };

    style = ''
      * {
        font-family: JetBrainsMono Nerd Font;
        color: #e0def4;
        background-color: #191724;
        font-size: 18px;
        font-weight: bold;
      }

      #workspaces {
      }
    '';
  };
}
