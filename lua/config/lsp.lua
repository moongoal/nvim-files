local lsp_config = {
    { "clangd", require("config.lsp.clangd") },
    { "lua_ls", require("config.lsp.lua_ls") },
    { "pylsp", require("config.lsp.pylsp") },
    { "cmake", require("config.lsp.cmake") },
    { "nushell", require("config.lsp.nushell") },
}

for i, entry in ipairs(lsp_config) do
    local name = entry[1]
    local cfg = entry[2]

    vim.lsp.config[name] = cfg
    vim.lsp.enable(name)
end

vim.api.nvim_create_user_command(
    "LspRestartAllServers",
    function (opts)
        local clients = vim.lsp.get_clients()
        vim.lsp.stop_client(clients)

        for i, c in ipairs(clients) do
            vim.lsp.enable(c)
        end
    end,
    { nargs = 0 }
)
