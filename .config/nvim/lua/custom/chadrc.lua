---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "github_light",
  theme_toggle = { "github_light", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      -- "           ▄ ▄                   ",
      -- "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      -- "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      -- "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      -- "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      -- "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      -- "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      -- "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      -- "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
      "▓█████▄  ██▀███           ██ ▄█▀ ██▓    ▓█████  ██▓ ███▄    █ ",
      "▒██▀ ██▌▓██ ▒ ██▒         ██▄█▒ ▓██▒    ▓█   ▀ ▓██▒ ██ ▀█   █ ",
      "░██   █▌▓██ ░▄█ ▒        ▓███▄░ ▒██░    ▒███   ▒██▒▓██  ▀█ ██▒",
      "░▓█▄   ▌▒██▀▀█▄          ▓██ █▄ ▒██░    ▒▓█  ▄ ░██░▓██▒  ▐▌██▒",
      "░▒████▓ ░██▓ ▒██▒ ██▓    ▒██▒ █▄░██████▒░▒████▒░██░▒██░   ▓██░",
      " ▒▒▓  ▒ ░ ▒▓ ░▒▓░ ▒▓▒    ▒ ▒▒ ▓▒░ ▒░▓  ░░░ ▒░ ░░▓  ░ ▒░   ▒ ▒ ",
      " ░ ▒  ▒   ░▒ ░ ▒░ ░▒     ░ ░▒ ▒░░ ░ ▒  ░ ░ ░  ░ ▒ ░░ ░░   ░ ▒░",
      " ░ ░  ░   ░░   ░  ░      ░ ░░ ░   ░ ░      ░    ▒ ░   ░   ░ ░ ",
      "   ░       ░       ░     ░  ░       ░  ░   ░  ░ ░           ░ ",
      " ░                 ░                                          ",
    },

    buttons = {
      { "  Find File", "g f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
