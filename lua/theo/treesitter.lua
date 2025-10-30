local ok, treesitter = pcall(require, "nvim-treesitter")
if not ok then
    vim.notify("Treesitter could not be loaded!")
    return
end

-- configs.setup({
--     ensure_installed = {"cpp", "python", "lua"},
--     sync_installed = false,
--     auto_install = true,
--     ignore_install = {""},
--     highlight = {
--         enable = true,
--         disable = {""},
--         additional_vim_regex_highlighting = false, -- buggy?
--     },
--     indent = {
--         enable = false,
--     },
--     autopairs = {enable = true},
-- })

local languages = { 'go', 'python', 'lua', 'yaml', 'json', 'rust', 'cpp', 'c', 'swift' }

treesitter.install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function()
    vim.treesitter.start()                                    -- highlighting
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
  end,
})
