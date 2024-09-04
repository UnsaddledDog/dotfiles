{
    programs.nixvim = {
        keymaps = [
            { mode = "v"; key = "J"; action = ":m '>+1<CR>gv=gv"; }
            { mode = "v"; key = "K"; action = ":m '<-2<CR>gv=gv"; }

            { mode = "n"; key = "J"; action = "mzJ`z"; }

            { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; }
            { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; }

            { mode = "n"; key = "n"; action = "nzzzv"; }
            { mode = "n"; key = "N"; action = "Nzzzv"; }

            { mode = "n"; key = "<leader>y"; action = "\"+y"; }
            { mode = "v"; key = "<leader>y"; action = "\"+y"; }
            { mode = "n"; key = "<leader>Y"; action = "\"+Y"; }

            { key = "<leader>e"; action = "<cmd>Neotree toggle<CR>"; }

            { key = "<leader>ff"; action = "<cmd>lua require('telescope.builtin').find_files()<CR>"; }
            { key = "<leader>fg"; action = "<cmd>lua require('telescope.builtin').live_grep()<CR>"; }
            { key = "<leader>fb"; action = "<cmd>lua require('telescope.builtin').buffers()<CR>"; }
            { key = "<leader>fn"; action = "<cmd>lua require('telescope.builtin').help_tags()<CR>"; }
        ];
    };
}
