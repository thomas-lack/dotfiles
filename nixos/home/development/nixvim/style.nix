{ pkgs, ... }:

{
	colorschemes.catppuccin = {
		enable = true;
		settings = {
			flavour = "macchiato";
		};
	};

	plugins = {
		notify.enable = true;
		lualine = {
			enable = true;
			iconsEnabled = true;
			globalstatus = true;
			theme = "catppuccin";
		};
	};
}
