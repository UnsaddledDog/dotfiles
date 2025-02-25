{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    hyprlandPlugins.borders-plus-plus
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    plugins = with pkgs; [
      hyprlandPlugins.borders-plus-plus
    ];

    settings = {
      plugin = {
        borders-plus-plus = {
          add_borders = 1;
          border_size_1 = 7;
          "col.border_1" = "rgb(191724)";
        };
      };

      env = [
        "XCURSOR_SIZE, 24"
        # "WLR_NO_HARDWARE_CURSORS,1"
        "HYPRCURSOR_THEME,rose-pine-hyprcursor"
        # "LIBVA_DRIVER_NAME,nvidia"
        # "XDG_SESSION_TYPE,wayland"
        # "GBM_BACKEND,nvidia-drm"
        # "__GLX_VENDOR_LIBRARY_NAME,nvidia"
      ];

      exec-once = [
        "hyprpanel &"
      ];

      input = {
        kb_layout = "us, hu";
        kb_options = "grp:alt_space_toggle";
        follow_mouse = 1;
        sensitivity = -0.68;
      };

      general = {
        "$mainMod" = "SUPER";
        layout = "dwindle";

        gaps_in = 4;
        gaps_out = 8;
        border_size = 5;

        "col.active_border" = "rgb(21202e)";
        "col.inactive_border" = "rgb(191724)";

        border_part_of_window = false;
        no_border_on_floating = false;
      };

      misc = {
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
      };

      dwindle = {
        pseudotile = "yes";
        preserve_split = "yes";
      };

      master = {
        new_status = "master";
        # no_gaps_when_only = false;
      };

      decoration = {
        rounding = 3;

        shadow = {
          enabled = false;
          range = 60;
          render_power = 4;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = false;
          size = 3;
          passes = 1;
        };
      };

      # decoration = {
      #     rounding = 3;
      #
      #     shadow = true;
      #     range = 60;
      #     render_power = 4;
      #     # "col.shadow" = "rgba(1a1a1aee)";
      #     color = "rgba(1a1a1aee)";
      #
      #     blur = {
      #         enabled = false;
      #         size = 3;
      #         passes = 1;
      #     };
      # };

      animations = {
        enabled = false;
      };

      bind = [
        #"$mainMod, F1, exec, show-keybinds"

        "$mainMod, RETURN, exec, ghostty"
        "$mainMod, E, exec, nautilus"
        "$mainMod, SPACE, exec, rofi -show drun"
        "$mainMod, Q, killactive"
        "$mainMod, DELETE, exit"
        "$mainMod, BACKSPACE, exec, hyprlock"
        "$mainMod SHIFT, S, exec, ~/dotfiles/scripts/screenshot.sh"

        # switch focus
        "$mainMod, H, movefocus, l"
        "$mainMod, J, movefocus, d"
        "$mainMod, K, movefocus, u"
        "$mainMod, L, movefocus, r"

        # switch workspace
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"

        # move window to workspace
        "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
        "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
        "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
        "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
        "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
        "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
        "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
        "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
        "$mainMod SHIFT, 9, movetoworkspacesilent, 9"

        # window control
        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, l, movewindow, r"
        "$mainMod SHIFT, k, movewindow, u"
        "$mainMod SHIFT, j, movewindow, d"
        "$mainMod CTRL, h, resizeactive, -80 0"
        "$mainMod CTRL, l, resizeactive, 80 0"
        "$mainMod CTRL, k, resizeactive, 0 -80"
        "$mainMod CTRL, j, resizeactive, 0 80"
        "$mainMod ALT, h, moveactive,  -80 0"
        "$mainMod ALT, l, moveactive, 80 0"
        "$mainMod ALT, k, moveactive, 0 -80"
        "$mainMod ALT, j, moveactive, 0 80"
      ];

      # mouse binding
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };

    extraConfig = ''
            monitor=,2560x1440@165,0x0,1

            windowrulev2 = tile, title:(Minecraft)
      	  cursor {
      		no_hardware_cursors = true
      	  }
    '';
  };
}
