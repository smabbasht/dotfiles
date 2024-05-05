return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.diagnostics.pylint,

                -- c, cpp
                null_ls.builtins.formatting.clang_format,

                -- rust

                -- others
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.erb_lint,
            },
        })

        vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
    end,
}
