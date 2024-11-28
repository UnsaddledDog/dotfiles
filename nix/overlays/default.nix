{ config, pkgs, lib, inputs, ... }:

{
    nixpkgs.overlays = [
        inputs.hyprpanel.overlay
        ( final: prev: {
          flameshot = prev.flameshot.overrideAttrs (previousAttrs: {
            cmakeFlags = [
              "-DUSE_WAYLAND_CLIPBOARD=1"
              "-DUSE_WAYLAND_GRIM=1"
            ];
            buildInputs = previousAttrs.buildInputs ++ [ final.libsForQt5.kguiaddons ];
          });
        } )
    ];
}
