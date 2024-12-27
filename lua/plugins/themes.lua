return {
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
    },
    {
        'olivercederborg/poimandres.nvim'
    },

    { "tiagovla/tokyodark.nvim" },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,

        config = function()
            vim.cmd("colorscheme kanagawa-dragon")
        end

    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "rose-pine/neovim",       name = "rose-pine" },
    { "rebelot/kanagawa.nvim",  name = "kanagawa" },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }

}
