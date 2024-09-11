{ ... }:

{
	plugins.telescope = {
		enable = true;
		keymaps = {
			"<leader>f" = {
				action = "live_grep";
				options = {
					desc = " lsp [f]ind word";
				};
			};
			"gf" = {
				action = "find_files";
				options = {
					desc = " lsp [g]oto [f]ile";
				};
			};
			"<leader><space>" = {
				action = "buffers";
				options = {
					desc = " lsp find buffers";
				};
			};
			"<leader>a" = {
				action = "code_action";
				options = {
					desc = " lsp code [a]ction";
				};
			};
			"<leader>r" = {
				action = "rename";
				options = {
					desc = " lsp [r]ename";
				};
			};
			"gD" = {
				action = "peek_definition";
				options = {
					desc = " lsp [g]oto [D]efinition peek";
				};
			};
		};
	};
}
