local M = {}

---@class Link
---@field link string: text of link
---@field index number: line number
---@field first number: start column
---@field last number: last column

-- find links
local function find_links(lines)
  local URL_PATTERN =
    "\\v\\c%(%(h?ttps?|ftp|file|ssh|git)://|[a-z]+[@][a-z]+[.][a-z]+:)%([&:#*@~%_\\-=?!+;/0-9a-z]+%(%([.;/?]|[.][.]+)[&:#*@~%_\\-=?!+/0-9a-z]+|:\\d+|,%(%(%(h?ttps?|ftp|file|ssh|git)://|[a-z]+[@][a-z]+[.][a-z]+:)@![0-9a-z]+))*|\\([&:#*@~%_\\-=?!+;/.0-9a-z]*\\)|\\[[&:#*@~%_\\-=?!+;/.0-9a-z]*\\]|\\{%([&:#*@~%_\\-=?!+;/.0-9a-z]*|\\{[&:#*@~%_\\-=?!+;/.0-9a-z]*\\})\\})+"
  ---@type Link[]
  local links = {}
  for index, line in ipairs(lines) do
    local link = ""
    local last = 0
    local first = 0
    while true do
      link, first, last = unpack(vim.fn.matchstrpos(line, URL_PATTERN, last))
      link = vim.trim(link)
      if link == "" then
        break
      end
      table.insert(links, { link = link, index = index, first = first, last = last })
    end
  end
  return links
end

-- find and open current line url in default browser
function M.open_current_line_url()
  local line = vim.api.nvim_get_current_line()
  local links = find_links({ line })
  local distance = math.huge
  local link
  if #links > 0 then
    local col = vim.fn.col(".")
    for _, l in ipairs(links) do
      if col >= l.first and col <= l.last then
        link = l
        break
      else
        local d = math.min(math.abs(l.first - col), math.abs(l.last - col))
        if d < distance then
          link = l
          distance = d
        end
      end
    end
  end
  if link then
    M.open_in_browser(link.link)
  else
    print("WARN:not found url in current line")
  end
end

function M.open_buffer_urls()
  local links = find_links(vim.api.nvim_buf_get_lines(0, 0, -1, false))
  vim.ui.select(links, {
    prompt = "Open link",
    format_item = function(item)
      return item.link
    end,
  }, function(choice)
    if choice then
      M.open_in_browser(choice.link)
    end
  end)
end

-- open url in default browser
---@param url string
function M.open_in_browser(url)
  if vim.fn.has("nvim-0.10") == 0 then
    require("lazy.util").open(url, { system = true })
    return
  end
  vim.ui.open(url)
end

return M
