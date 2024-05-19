-- Rusty 
vim.g.rustaceanvim = {
    server = {
        on_attach = function(client, bufnr)
            -- you can also put keymaps in here
            vim.keymap.set("n", "<leader>ee", vim.cmd.RustLsp('explainError'), {})
            -- vim.keymap.set("n", "K", vim.cmd.RustLsp('openDocs'), {})
            vim.keymap.set("n", "K", function() vim.cmd.RustLsp { "hover", "actions" } end, { buffer = bufnr })
        end,
        cmd = function()
            local mason_registry = require('mason-registry')
            local ra_binary = mason_registry.is_installed('rust-analyzer')
                and mason_registry.get_package('rust-analyzer'):get_install_path() .. "/rust-analyzer"
                or "rust-analyzer"
            return { ra_binary }
        end,
    },
    tools = {
    },
    dap = {
    },
}

return {
    'mrcjkb/rustaceanvim',
    version = '^4',
    lazy = false,
}

