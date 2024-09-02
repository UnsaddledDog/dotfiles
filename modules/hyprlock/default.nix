{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = false;
        no_fade_in = true;
        no_fade_out = true;
        ignore_empty_input = true;
        # immediate_render = true;
        hide_cursor = true;
      };

      background = [
        {
          path = "${../../assets/wallpapers/monochrome_mountain.jpg}";
          blur_passes = 3;
          blur_size = 5;
        }
      ];

      label = [
        {
          text = "cmd[update:1000] echo \"$(date +\"%-I:%M%p\")\"";
          color = "rgb(9ccfd8)";
          font_size = 120;
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          position = "0, -300";
          halign = "center";
          valign = "top";
        }

        {
          text = "Type to unlock";
          color = "rgb(e0def4)";
          font_size = 16;
          font_family = "JetBrains Mono Nerd Font Mono Bold";
          position = "0, 270";
          halign = "center";
          valign = "bottom";
        }
      ];

      input-field = [
        {
          size = "200, 40";
          placeholder_text = "";
          fade_on_empty = false;
          hide_input = false;
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          outline_thickness = 6;
          dots_size = 0.2;
          dots_spacing = 0.4;
          outer_color = "rgba(33, 32, 46, 0)";
          inner_color = "rgba(25, 23, 36, 0)";
          font_color = "rgb(e0def4)";
          fail_color = "rgb(eb6f92)";
          check_color = "rgb(f6c177)";
          position = "0, 220";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}
