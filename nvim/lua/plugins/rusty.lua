return {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false,   -- This plugin is already lazy
    config = function()
        -- Update this path
        local rt = require("rustaceanvim")
        local mason_registry = require("mason-registry")

        local codelldb = mason_registry.get_package("codelldb")
        local extension_path = codelldb:get_install_path() .. "/extension/"
        local codelldb_path = extension_path .. "adapter/codelldb"
        local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

        local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.10.0/'
        local codelldb_path = extension_path .. 'adapter/codelldb'
        local liblldb_path = extension_path .. 'lldb/lib/liblldb'
        local this_os = vim.uv.os_uname().sysname;

        liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")

        local cfg = require('rustaceanvim.config')
        dap = {
            adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        }
        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set(
            "n",
            "<leader>rca",
            function()
                vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
                -- or vim.lsp.buf.codeAction() if you don't want grouping.
            end,
            { silent = true, buffer = bufnr }
        )
    end
}
