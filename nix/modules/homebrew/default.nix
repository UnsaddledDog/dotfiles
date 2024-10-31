{
    homebrew = {
        enable = true;
        casks = [
            "nikitabobko/tap/aerospace"
            "anki"
            "appcleaner"
            "zen-browser"
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
        ];
        taps = [
            # "nikitabobko/tap"
        ];
        onActivation.cleanup = "zap";
    };
}
