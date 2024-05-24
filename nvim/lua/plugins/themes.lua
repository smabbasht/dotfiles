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
            vim.api.nvim_set_hl(0, "Comment", { fg = "#81A1C1" })
        end,
        priority = 1000,
    },
    {
    "olimorris/onedarkpro.nvim",
    }
}
