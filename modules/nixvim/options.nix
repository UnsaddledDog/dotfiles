{
    programs.nixvim = { 
        opts = {
            number = true;
            relativenumber = true;

            tabstop = 4;
            softtabstop = 4;
            shiftwidth = 4;
            expandtab = true;

            smartindent = true;
            wrap = false;
            termguicolors = true;

            mouse = "a";
            guicursor = "";
            clipboard = "unnamedplus";
            
            hlsearch = false;
            incsearch = true;

            swapfile = false;
            backup = false;

            scrolloff = 8;
            signcolumn = "yes";

            updatetime = 50;
        };

        globals = {
            mapleader = " ";
            maplocalleader = " ";
        };
    };
}
