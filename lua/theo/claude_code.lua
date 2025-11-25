local status_ok, claude = pcall(require, "claude-code")
if not status_ok then
    return
end

claude.setup({
  window = {
    position = "vertical",
    split_ratio = 0.4,
    float = {
      width = "90%",      -- Take up 90% of the editor width
      height = "90%",     -- Take up 90% of the editor height
      row = "center",     -- Center vertically
      col = "center",     -- Center horizontally
      relative = "editor",
      border = "double",  -- Use double border style
    },
  },
  keymaps = {
      toggle = {
        normal = "<leader>ac",       -- Normal mode keymap for toggling Claude Code, false to disable
        variants = {
          continue = "<leader>cc", -- Normal mode keymap for Claude Code with continue flag
        },
      },
      window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
    }
})
