{ pkgs, ... }:

{
	plugins = {
		lazygit = {
			enable = true;
			settings = {
				floating_window_border_chars = [
					"╭"
					"─"
					"╮"
					"│"
					"╯"
					"─"
					"╰"
					"│"
				];
				floating_window_scaling_factor = 0.9;
				floating_window_use_plenary = false;
				floating_window_winblend = 0;
				use_custom_config_file_path = false;
				use_neovim_remote = true;
			};
		};
	};

	keymaps = [
		{
			key = "<leader>gg"; 
			mode = "n";
			action = "<cmd>LazyGit<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Open Lazy[g]it";
      };
		}
	];
}
