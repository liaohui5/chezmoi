local M = {}

M.toggle_comma_semicolon = function()
  local api = vim.api
  local cursor_pos = api.nvim_win_get_cursor(0)
  local cursor_row = cursor_pos[1]
  local cursor_col = cursor_pos[2]

  local lines = api.nvim_buf_get_lines(0, cursor_row - 1, cursor_row, false)
  if not lines or #lines == 0 then
    return
  end
  local current_line = lines[1]

  local new_line
  if not current_line or current_line == "" then
    return
  end

  local last_char = current_line:sub(-1)
  if last_char ~= "," and last_char ~= ";" then
    new_line = current_line .. ","
  elseif last_char == "," then
    new_line = current_line:sub(1, -2) .. ";"
  elseif last_char == ";" then
    new_line = current_line:sub(1, -2)
  end

  -- update line
  api.nvim_buf_set_lines(0, cursor_row - 1, cursor_row, false, { new_line })

  -- keep cursor position
  local new_cursor_col = math.min(cursor_col, #new_line)
  api.nvim_win_set_cursor(0, { cursor_row, new_cursor_col })
end

return M
