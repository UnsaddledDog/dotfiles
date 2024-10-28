{ pkgs, ... }:

{
    imports = [
        ./lsp.nix
        ./cmp.nix
        ./keymaps.nix
        ./options.nix
    ];

    home.packages = with pkgs; [
        ripgrep
    ];

    programs.nixvim = {
        enable = true;
		
        defaultEditor = true;
        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;

        colorschemes.rose-pine.enable = true;

		plugins = {
            transparent.enable = true;
            treesitter.enable = true;
            neo-tree.enable = true;
            comment.enable = true;
            # indent-blankline.enable = true;

            lualine = {
                enable = true;

                componentSeparators.left = "";
                componentSeparators.right = "";

                sectionSeparators.left = "";
                sectionSeparators.right = "";
            };

            telescope = {
                enable = true;
            };
        };

        extraPlugins = with pkgs.vimPlugins; [
        ] ++ [
		    /* (pkgs.vimUtils.buildVimPlugin {
                pname = "tokyodark";
                src = pkgs.fetchFromGitHub {
                    owner = "tiagovla";
                    repo = "tokyodark.nvim";
                    rev = "14bc1b3e596878a10647af7c82de7736300f3322";
                    sha256 = "c5D+Lj7lSF1cAcmKECJy2wA9woStBE1ARrY2y48MMDw=";
                };
		        version = "";
            }) */
        ];
    };
}
