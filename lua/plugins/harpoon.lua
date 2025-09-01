return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        
        -- Initialize harpoon
        harpoon:setup()
        
        -- Key mappings
        vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "[harpoon] add" })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        
        -- Quick navigation to specific files (1-4)
        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "[harpoon] buffer #1" })
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "[harpoon] buffer #2" })
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "[harpoon] buffer #3" })
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "[harpoon] buffer #4" })
        
        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "[harpoon] open previous"})
        vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "[harpoon] open next"})
        
        -- Alternative key mappings (more traditional approach)
        -- vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
        -- vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
        -- vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        -- vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
        
        -- Additional useful mappings
        vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end, { desc = "[harpoon] clear all"}) -- Clear all harpoon marks
        vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end, { desc = "[harpoon] remove current"}) -- Remove current file from harpoon
    end,
}
