local cap = require('blink.cmp').get_lsp_capabilities()
local server_files = vim.api.nvim_get_runtime_file("lua/lspconfig/configs/*.lua", true)

for _, file in ipairs(server_files) do
    local server = vim.fn.fnamemodify(file, ":t:r")
    local ok, config = pcall(require, "lspconfig.configs." .. server)

    if ok and type(config) == "table" and config.default_config and config.default_config.cmd then
        local cmd_def = config.default_config.cmd

        if type(cmd_def) == "table" and type(cmd_def[1]) == "string" then
            if vim.fn.executable(cmd_def[1]) == 1 then
                vim.lsp.config(server, { capabilities = cap })
                vim.lsp.enable(server)
            end
        end
    end
end
