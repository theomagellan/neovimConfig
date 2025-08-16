vim.api.nvim_create_autocmd('PackChanged', { callback = function(args) 
  local spec = args.data.spec

  if spec == nil then
    return
  end

  local path = args.data.path

  if spec.name == "treesitter" then
      vim.cmd("TSUpdate")
  end

  if spec.name == "fzf-native" then
    vim.cmd("! cd " .. path .. " && make")
  end

end })

vim.pack.add({
  "https://github.com/nvim-lua/popup.nvim", -- An implementation of the Popup API from vim in Neovim,
  "https://github.com/nvim-lua/plenary.nvim", -- Useful lua functions used in lots of plugins
  "https://github.com/rcarriga/nvim-notify", -- better notification system
  "https://github.com/windwp/nvim-autopairs", -- autopair plugin (highly customizable!)
  "https://github.com/kylechui/nvim-surround", -- cool plugin to surround text
  "https://github.com/catppuccin/nvim", -- theme
  "https://github.com/Pocco81/auto-save.nvim", --autosave
  "https://github.com/akinsho/bufferline.nvim", -- cuter tabs
  "https://github.com/akinsho/toggleterm.nvim", -- toggleterm
  "https://github.com/m4xshen/smartcolumn.nvim", -- columns appear/disappear
  -- lualine
  "https://github.com/nvim-lualine/lualine.nvim", -- lualine

  -- cmp plugins
  "https://github.com/hrsh7th/nvim-cmp", -- The completion plugin
  "https://github.com/hrsh7th/cmp-buffer", -- buffer completions
  "https://github.com/hrsh7th/cmp-path", -- path completions
  "https://github.com/hrsh7th/cmp-cmdline", -- cmdline completions
  "https://github.com/saadparwaiz1/cmp_luasnip", -- snippet completions
  "https://github.com/hrsh7th/cmp-nvim-lsp", -- LSP snippet support

  -- LSP
  "https://github.com/neovim/nvim-lspconfig", -- LSP engine
  "https://github.com/williamboman/mason-lspconfig.nvim", -- LSP installer
  "https://github.com/RishabhRD/lspactions", --better UX

  -- snippets
  "https://github.com/L3MON4D3/LuaSnip", --snippet engine
  "https://github.com/rafamadriz/friendly-snippets", -- a bunch of snippets to use

  -- telescope plugins
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  {src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", name = "fzf-native"},

  -- treesitter plugins
  {src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "treesitter"}, -- treesitter
  "https://github.com/HiPhish/rainbow-delimiters.nvim",

  -- NvimTree
  "https://github.com/kyazdani42/nvim-tree.lua", -- file explorer
  "https://github.com/kyazdani42/nvim-web-devicons", -- devicons (requires a nerdfont!)
})
