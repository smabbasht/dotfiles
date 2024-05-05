return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
    "Mofiqul/dracula.nvim",
        lazy=false, 
        name = "dracula",
        config = function()
            vim.cmd.colorscheme "dracula"
        end,
        priority = 1000,
    },
    {
    "olimorris/onedarkpro.nvim",
    }
}
