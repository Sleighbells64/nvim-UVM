return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = {
      highlight = { -- Array of highlight groups for rainbow colors
        "NonText", -- uses the built in color scheme names for indenting to match with the colorscheme better, check names and colors with :highlight or :hi
        "ModeMsg", -- Level 2 indents use lighter grey
        "StatusLineNC", -- Level 3 indents use white
        "ModeMsg", -- Level 4 indents use blue
      }, -- After level 4, it cycles back
      char = "│", -- The character used to draw indent lines (vertical bar)
    },
    scope = {
      highlight = {"Directory"},
    },
  },
}
