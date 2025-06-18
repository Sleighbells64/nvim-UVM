return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        verible = {
          cmd = { "verible-verilog-ls" },
          filetypes = { "verilog", "systemverilog" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(".git")(fname) or vim.fs.dirname(fname)
          end,
        },
      },
    },
  },
}
