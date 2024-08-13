local status, gitsights = pcall(require, "gitsigns.nvim");

if not status then
  return
end

gitsights.setup({})
