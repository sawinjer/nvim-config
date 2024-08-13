require("sawinjer.plugins-setup")

require("sawinjer.core.options")
require("sawinjer.core.keymaps")
require("sawinjer.core.colorscheme")

--plugins
require("sawinjer.plugins.comment")
require("sawinjer.plugins.nvim-tree")
require("sawinjer.plugins.lualine")
require("sawinjer.plugins.telescope")
require("sawinjer.plugins.nvim-cmp")
require("sawinjer.plugins.autoclose")
-- lsp plugins
require("sawinjer.plugins.lsp.mason")
require("sawinjer.plugins.lsp.lspsaga")
require("sawinjer.plugins.lsp.lspconfig")
require("sawinjer.plugins.lsp.file-operations")
require("sawinjer.plugins.lsp.conform")
-- git
require("sawinjer.plugins.lazygit")
require("sawinjer.plugins.gitsigns")
