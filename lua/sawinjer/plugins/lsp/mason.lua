local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

function TableConcat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

lsp_default_servers = {
	"html",
	"cssls",
	"tailwindcss",
	"clangd",
	"gopls",
	-- "rome", -- json
	"marksman", -- markdown
	"psalm", -- php
	"ruff", -- python
	"rust_analyzer",
	"sqlls",
	"yamlls",
	"taplo", -- toml
	"emmet_ls",
	"volar", -- Vue
	"biome",
	"somesass_ls",
}

lsp_all_serveres = TableConcat(lsp_default_servers, {
	"ts_ls",
	"lua_ls",
	"eslint",
})

mason.setup()
mason_lspconfig.setup({
	ensure_installed = lsp_all_serveres,
})
