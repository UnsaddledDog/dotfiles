{
    programs.nixvim.plugins = {
        lsp = {
            enable = true;

            servers = {
                nil-ls.enable = true;
                clangd.enable = true;
                csharp-ls.enable = true;
                lua-ls = {
                    enable = true;
                    settings.telemetry.enable = false;
                };
            };

            keymaps.lspBuf = {
                "gd" = "definition";
                "gD" = "references";
                "gt" = "type_definition";
                "gi" = "implementation";
                "K" = "hover";
            };
        };
    };
}
