{ pkgs, ... }:

{
    programs.waybar = {
        enable = true;

        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 30;
                modules-left = [ "custom/launcher" "hyprland/workspaces"];
                modules-right = [ "hyprland/language" "custom/separator" "pulseaudio" "custom/separator" "memory" "custom/separator" "cpu" "custom/separator" "clock" ];

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

                "custom/launcher" = {
                    format = "󰋄";
                    on-click = "rofi -show drun &";
                };

                "clock" = {
                    format = "󰥔 {:%a %d %b %H:%M}";
                };

                "cpu" = {
                    format = " {}%";
                };

                "memory" = {
                    format = " {}%";
                };

                "pulseaudio" = {
                    format = "󰕾 {volume}";
                };

                "custom/separator" = {
                    format = "|";
                    interval = "once";
                    tooltip = false;
                };
            };
        };

        style = ''
            * {
                font-family: JetBrainsMono Nerd Font;
                color: #e0def4;
                background-color: #191724;
                font-size: 18px;
                font-weight: bold;
                border: none;
            }

            .modules-left {
                padding: 5px 10px 5px 10px;
            }

            .modules-right {
                padding: 5px 15px 5px 15px;
            }

            #language ,#pulseaudio ,#memory ,#cpu {
                padding-left: 5px;
                padding-right: 5px;
            }

            #custom-separator {
                padding-left: 5px;
                padding-right: 5px;
            }

            #workspaces button {
                margin-left: 5px;
                margin-right: 5px;
            }

            #clock {
                color: #c4a7e7;
            }

            #cpu {
                color: #ebbcba;
            }

            #memory {
                color: #31748f;
            }
            
            #pulseaudio {
                color: #9ccfd8;
            }

            #language {
                color: #eb6f92;
            }
        '';
    };
}
