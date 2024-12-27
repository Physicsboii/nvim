return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require('telescope').setup {
                defaults = {
                    file_ignore_patterns = {
                        "node_modules"
                    }
                }
            }
            vim.keymap.set("n", "<space>pf", require('telescope.builtin').find_files)

            vim.keymap.set("n", "<space>pc", require('telescope.builtin').colorscheme)
        end
    }
}
