vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.use_nerd_font = true

vim.lsp.set_log_level("trace")

require("options")
require("keymaps")
require("lazy-bootstrap")
require("lazy-plugins")
