local status, alpha = pcall(require, "alpha")

if not status then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⣦⣀⠀⢸⣧⢠⣿⣿⢠⡇⠀⡀⠀⣀⣴⡇⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠠⢄⡈⢿⣷⣿⣷⣾⣿⣿⣾⣴⣾⣶⣿⣿⣿⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⣀⣠⣤⣴⣾⣿⣿⣏⣿⣿⣿⣯⣻⡻⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⡿⣿⣿⡿⢋⣤⣄⡛⠿⣿⠟⣿⡟⣁⣀⣀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⢀⣠⣼⣿⣿⣿⡇⢉⣡⣶⢟⣯⣭⣽⣓⢦⡀⣮⢻⣯⣁⣀⡀⠀⠀⠀]],
	[[⠀⠀⠈⢭⣿⣿⣿⣿⣿⣿⠃⣿⣿⠑⠋⠀⠀⠀⠉⢹⡇⣹⣧⢻⡿⠟⠋⠁⠀⠀]],
	[[⠀⠀⠀⠀⠉⠛⠻⠿⢿⣹⣲⡽⣿⣷⣄⢀⣀⡀⣠⣿⡾⣛⡛⠃⠁⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⣴⣿⣧⣟⣛⡽⣿⣿⣿⣿⣿⣟⣝⠚⠛⠛⠓⠄⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠘⠉⢀⠿⠋⠁⠿⠸⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣾⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣀⡴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀ ]],
	[[⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣟⡿⣾⣭⣟⣿⢿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀]],
	[[⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣝⣮⣟⢿⣿⣿⣷⣿⣭⣿⣿⣷⣾⣿⠀⠀⠀⠀]],
}

dashboard.section.buttons.val = {
	dashboard.button("<C-P>", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "hello there ... "
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

function open_alpha()
	vim.cmd("Alpha")
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_alpha })
