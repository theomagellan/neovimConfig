local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    vim.notify("Treesitter could not be loaded!")
    return
end

configs.setup({
    ensure_installed = {"cpp", "python", "lua"},
    sync_installed = false,
    auto_install = true,
    ignore_install = {""},
    highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_highlighting = false, -- buggy?
    },
    indent = {
        enable = false,
    },
    autopairs = {enable = true},
})
