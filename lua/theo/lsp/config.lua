local servers = {
    "clangd",
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    vim.notify("Could not load LSP!", "error")
    return
end

local opts = {}

local handlers = require("theo.lsp.handlers")

for _, server in pairs(servers) do
    opts = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
    }

    server = vim.split(server, "@")[1]
    local require_ok, conf_opts = pcall(require, "theo.lsp.settings." .. server)
    if require_ok then
        opts = vim.tbl_deep_extend("force", conf_opts, opts)
    else
        opts = vim.tbl_deep_extend("force", {}, opts)
    end
    vim.lsp.config[server] = opts
    vim.lsp.enable(server)
end

return {setup = handlers.setup}
