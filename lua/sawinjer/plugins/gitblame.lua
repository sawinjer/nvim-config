local setup, gitblame = pcall(require, "gitblame")
if not setup then
	return
end

gitblame.setup({
	enabled = true,
})
