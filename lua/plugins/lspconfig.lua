return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {

      -- verible = {
      --   cmd = { "verible-verilog-ls",
      --           "--rules=-line-length,-no-trailing-spaces",
      --         },
      --   filetypes = { "verilog", "systemverilog" },
      --   root_dir = function(fname)
      --     return require("lspconfig.util").root_pattern(".git")(fname) or vim.fn.getcwd()
      --   end,
      -- },
      --
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic", -- or "strict"
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace", -- or "openFilesOnly"
            },
          },
        },
      },
    },


    setup = { -- Mason cannot handle verible, must do it manually.
      verible = function(_, opts)
        require("lspconfig").verible.setup(opts)
        return true  -- Return true to prevent default setup
      end,
    }
  },
}
