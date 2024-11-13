{
  homebrew = {
    enable = true;
    casks = [
      "nikitabobko/tap/aerospace"
      "arc"
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
    ];
    taps = [
      # "nikitabobko/tap"
    ];
    onActivation.cleanup = "zap";
  };
}
