return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = {
      highlight = { -- Array of highlight groups for rainbow colors
        "@variable", -- uses the built in color scheme names for indenting to match with the colorscheme better, check names and colors with :highlight or :hi
        "Exception", -- Level 2 indents use red
        "Boolean", -- Level 3 indents use green
        "String", -- Level 4 indents use orange
      }, -- After level 4, it cycles back
      char = "│", -- The character used to draw indent lines (vertical bar)
    },
  },
}
