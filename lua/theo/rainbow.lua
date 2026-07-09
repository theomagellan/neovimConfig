local ok, rainbow_delimiters = pcall(require, "rainbow-delimiters.setup")
if not ok then
    vim.notify("could not load rainbow delimiters!")
    return
end

-- rainbow_delimiters.setup{
--         strategy = {
--             [''] = 'rainbow-delimiters.strategy.global',
--             commonlisp = 'rainbow-delimiters.strategy.local',
--         },
--         query = {
--             [''] = 'rainbow-delimiters',
--             latex = 'rainbow-blocks',
--         },
--         highlight = {
--             'RainbowDelimiterRed',
--             'RainbowDelimiterYellow',
--             'RainbowDelimiterBlue',
--             'RainbowDelimiterOrange',
--             'RainbowDelimiterGreen',
--             'RainbowDelimiterViolet',
--             'RainbowDelimiterCyan',
--         },
-- }
