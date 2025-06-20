function status_line()
    local left = "%([%M%R%H%W] %q %f%)"
    local right = "%<%([%{&ff}] 0x%00B @ %l,%c (%p%%)%) %(%y%)"

    return left .. "%=" .. right
end

vim.o.statusline = status_line()
