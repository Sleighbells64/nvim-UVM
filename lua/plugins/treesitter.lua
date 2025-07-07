return {
  "nvim-treesitter/nvim-treesitter",

  opts = {

    ensure_installed = {
      "python",
      "verilog", -- your existing one
    },

  },

}

-- in ~/.config/nvim/lua/plugins/treesitter.lua
-- or in your main plugins file
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   build = ":TSUpdate",
--   config = function()
--     require'nvim-treesitter.configs'.setup {
--       ensure_installed = { "systemverilog", "lua", "vim", "vimdoc" }, -- add other languages you need
--       highlight = {
--         enable = true,
--         additional_vim_regex_highlighting = false,
--       },
--       -- ... other treesitter config
--     }
--   end,
-- }
