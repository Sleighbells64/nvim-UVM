return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "accept", "fallback" },
      ["<CR>"] = { "fallback" }, -- Disable Enter for completion
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
