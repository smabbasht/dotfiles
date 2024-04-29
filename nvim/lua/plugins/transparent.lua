return {
    "xiyaowong/nvim-transparent",
    config = function()
        vim.keymap.set("n", "<leader>tt", vim.cmd.TransparentToggle, { silent = true }) -- toggle transparent
    end
}
