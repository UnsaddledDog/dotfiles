{ pkgs, inputs, system, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = [
      # inputs.hyprland-plugins.packages."${pkgs.stdenv.hostPlatform.system}".borders-plus-plus
      #inputs.hyprland.packages.${pkgs.system}.default.stdenv.mkDerivation.borders-plus-plus
    ];

    settings = {
      exec-once = [
        "waybar &"
      ];

      input = {
        kb_layout = "us, hu";
        follow_mouse = 1;
        sensitivity = 0;
      };

      general = {
        "$mainMod" = "SUPER";
        layout = "dwindle";

        gaps_in = 5;
        gaps_out = 10;
        border_size = 4;

        "col.active_border" = "rgb(eb6f92)";
        "col.inactive_border" = "rgb(ebbcba)";

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
        no_gaps_when_only = false;
      };

      decoration = {
        rounding = 0;

        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(1a1a1aee)";

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
        };
      };

      animations = {
        enabled = false;
      };

      bind = [
        #"$mainMod, F1, exec, show-keybinds"

        "$mainMod, RETURN, exec, kitty"
        "$mainMod, E, exec, nautilus"
        "$mainMod, SPACE, exec, rofi -show drun"
        "$mainMod, Q, killactive"
        "$mainMod, M, exit"

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
      # exec-once = waybar &
    '';
  };
}
