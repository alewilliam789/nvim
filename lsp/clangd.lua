return {
  cmd = { 'clangd' },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cpp' },
}
-- Defined in init.lua
vim.lsp.config('clangd', {
  filetypes = { 'c' },
})
