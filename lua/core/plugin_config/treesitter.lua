require('nvim-treesitter.configs').setup {
    ensure_installed = { "typescript", "python","c","cpp","json", "make"},

    --Install parsers sycnchronously (only applied to above)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    }
}