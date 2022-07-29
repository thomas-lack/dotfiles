local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, 'nvim-tree.config')
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ':t',
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        folder = {
          arrow_open = '',
          arrow_closed = '',
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
        git = {
          unstaged = '',
          staged = 'S',
          unmerged = '',
          renamed = '➜',
          untracked = 'U',
          deleted = '',
          ignored = '◌',
        },
      },
    },
		indent_markers = {
			enable = true,
			inline_arrows = true,
		}
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = '',
      info = '',
      warning = '',
      error = '',
    },
  },
  view = {
    width = 30,
    height = 30,
    side = 'left',
		adaptive_size = true,
		signcolumn = 'auto',
    mappings = {
      list = {
        { key = { 'l', '<CR>', '<2-LeftMouse>' }, cb = tree_cb('edit') },
        { key = 'h', cb = tree_cb('close_node') },
				{ key = 'u', cb = tree_cb('dir_up') },
				{ key = '<ESC>', cb = tree_cb('close') },
				{ key = 'c', cb = tree_cb('create') },
				{ key = 'd', cb = tree_cb('remove') },
      },
    },
  },
	filters = {
		dotfiles = false,
	}
}
