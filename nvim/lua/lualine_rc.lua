-- Show skkeleton mode next to vim mode
local function skkmode()
    local mode = vim.fn['skkeleton#mode']()
    if mode == '' then
        return 'A'
    elseif mode == 'hira' then
        return 'あ'
    elseif mode == 'kata' then
        return 'ア'
    elseif mode == 'hankata' then
        return 'ｱ'
    else
        return mode
    end
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = "molokai",
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode', skkmode},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'mode', skkmode},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

