require('nvim-treesitter.configs').setup {
    ensure_installed = { "html", "css", "scss", "javascript", "typescript", "c"},

    --Install parsers sycnchronously (only applied to above)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    }
}