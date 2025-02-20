{
  homebrew = {
    enable = true;
    casks = [
      #"nikitabobko/tap/aerospace"
      "firefox"
      "anki"
      "appcleaner"
      "ghostty"
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
      "adobe-creative-cloud"
    ];
    taps = [
      # "nikitabobko/tap"
    ];
    onActivation = {
      cleanup = "zap";
      autoUpdate = true;
      upgrade = true;
    };
  };
}
