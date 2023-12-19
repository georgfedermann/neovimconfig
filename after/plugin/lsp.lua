require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "ansiblels", "clojure_lsp", "lua_ls", "pyright", }
})

local on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    -- Executes a command provided by the language server
    --    vim.keymap.set('n', 'ecmd', function() vim.lsp.buf.execute_command() end, opts)

    -- Shows the signature of the function at the current cursor position
    --    vim.keymap.set('n', 'hiss', function() vim.lsp.buf.signature_help() end, opts)

    -- Triggers the completion suggestions
    --    vim.keymap.set('i', '<C-Space>', function() vim.lsp.buf.completion() end, opts)

    -- Searches for a symbol across the entire workspace
    --    vim.keymap.set('n', 'wss', function() vim.lsp.buf.workspace_symbol() end, opts)

    -- Highlights all references of the symbol under the cursor in the current document
    --    vim.keymap.set('n', 'dhh', function() vim.lsp.buf.document_highlight() end, opts)

    -- Clears the document highlights created by document_highlight
    --    vim.keymap.set('n', 'dhc', function() vim.lsp.buf.clear_references() end, opts)

    -- Jumps to the declaration of the symbol under the cursor
    --    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)

    -- Jumps to the definition of the symbol under the cursor
    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)

    -- Jumps to the implementation of an abstract function or interface
    --    vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)

    -- Lists all symbols (like functions, classes, variables) in the current document
    --    vim.keymap.set('n', 'dsym', function() vim.lsp.buf.document_symbol() end, opts)

    -- Shows hover information (like documentation or type info) for the symbol under the cursor
    vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)

    -- Suggests code actions at the current cursor position (like refactoring, fixing errors)
    --    vim.keymap.set('n', 'ca', function() vim.lsp.buf.code_action() end, opts)

    -- Shows a list of all functions that call the function under the cursor
    --    vim.keymap.set('n', 'inc', function() vim.lsp.buf.incoming_calls() end, opts)

    -- Displays all functions that the function under the cursor calls
    --    vim.keymap.set('n', 'out', function() vim.lsp.buf.outgoing_calls() end, opts)

    -- Lists all folders in the current workspace
    --    vim.keymap.set('n', 'lwf', function() vim.lsp.buf.list_workspace_folders() end, opts)

    -- Lists all references to the symbol under the cursor across the workspace
    --    vim.keymap.set('n', 'ref', function() vim.lsp.buf.references() end, opts)

    -- Adds a new folder to the workspace
    --    vim.keymap.set('n', 'awf', function() vim.lsp.buf.add_workspace_folder() end, opts)

    -- Removes a folder from the workspace
    --    vim.keymap.set('n', 'rwf', function() vim.lsp.buf.remove_workspace_folder() end, opts)

    -- Renames the symbol under the cursor and updates its references
    --    vim.keymap.set('n', 'ren', function() vim.lsp.buf.rename() end, opts)

    -- Formats the current document
    vim.keymap.set('n', 'fmt', function() vim.lsp.buf.format() end, opts)

    -- Jumps to the type definition of the symbol under the cursor
    vim.keymap.set('n', 'td', function() vim.lsp.buf.type_definition() end, opts)

    -- Checks if the language server is ready
    --    vim.keymap.set('n', 'lspr', function() vim.lsp.buf.server_ready() end, opts)

    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, opts)
end

local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

local lsp_config = require("lspconfig")

lsp_config.ansiblels.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

lsp_config.clojure_lsp.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

lsp_config.gopls.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

lsp_config.groovyls.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

lsp_config.lua_ls.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

lsp_config.pyright.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}

-- OpenAPI
lsp_config.spectral.setup {
    on_attach = on_attach,
    capabilities = cmp_capabilities
}
