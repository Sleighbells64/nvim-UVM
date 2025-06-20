return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
    },
  },
}
