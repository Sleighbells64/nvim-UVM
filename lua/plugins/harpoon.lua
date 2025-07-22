return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        
        -- Initialize harpoon
        harpoon:setup()
        
        -- Key mappings
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        
        -- Quick navigation to specific files (1-4)
        vim.keymap.set("n", "<C-7>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-8>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-9>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-0>", function() harpoon:list():select(4) end)
        
        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
        
        -- Alternative key mappings (more traditional approach)
        -- vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
        -- vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
        -- vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        -- vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
        
        -- Additional useful mappings
        vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end) -- Clear all harpoon marks
        vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end) -- Remove current file from harpoon
    end,
}
