{
  homebrew = {
    enable = true;
    casks = [
      #"nikitabobko/tap/aerospace"
      #"arc"
      "firefox"
      "anki"
      "appcleaner"
      # "zen-browser"
      "iterm2"
      "spotify"
      "tidal"
      "notion"
      "rekordbox"
      "vmware-fusion"
      "vlc"
      "discord"
      "microsoft-word"
      "microsoft-excel"
      "microsoft-powerpoint"
      "microsoft-teams"
      "shottr"
      "affinity-photo"
      "affinity-designer"
      "affinity-publisher"
      "protonvpn"
      "qbittorrent"
      "upscayl"
      "rectangle"
    ];
    taps = [
      # "nikitabobko/tap"
    ];
    onActivation.cleanup = "zap";
  };
}
