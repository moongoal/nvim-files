local function getLines(text)
    local result = {}
    for s in string.gmatch(text, "([^\n]+)") do
        table.insert(result, s)
    end
    return result
end

local function formatBuffer()
    local clang_format = os.getenv("CLANGFORMAT") or "clang-format"
    local view = vim.fn.winsaveview()
    local buffer = vim.api.nvim_get_current_buf()
    local lines = vim.api.nvim_buf_get_lines(buffer, 0, -1, false)
    local completion = vim.system({ clang_format, "--style=file" }, { stdin = lines, text = true }):wait()

    if completion.code ~= 0 then
        vim.print(completion.stderr)
    else
        local output = completion.stdout
        local output_lines = getLines(output)

        vim.api.nvim_buf_set_lines(buffer, 0, -1, false, output_lines)
        vim.fn.winrestview(view)
    end
end

vim.api.nvim_create_user_command(
    "ClangFormatBuffer",
    formatBuffer,
    {}
)
