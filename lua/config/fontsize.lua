function change_font_size(delta)
  local current = vim.o.guifont
  local name, size = string.match(current, "([^:]+):h(%d+)")

  if name and size then
    local new_size = tonumber(size) + delta
    vim.o.guifont = string.format("%s:h%d", name, new_size)
  end
end

vim.api.nvim_create_user_command("IncreaseFontSize", function()
  change_font_size(1)
end, {})

vim.api.nvim_create_user_command("DecreaseFontSize", function()
  change_font_size(-1)
end, {})
