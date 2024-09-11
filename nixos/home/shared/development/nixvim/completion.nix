{pkgs, ...}: {
  plugins = {
    luasnip = {
      enable = true;
      fromVscode = [
        {}
      ];
    };
    cmp = {
      enable = true;
      settings = {
        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({select = true, behavior = cmp.ConfirmBehavior.Insert })";
          "<Tab>" = "cmp.mapping(function(fallback)
              local luasnip = require('luasnip')
							if cmp.visible() then
								cmp.select_next_item()
							elseif luasnip.expand_or_jumpable() then
								luasnip.expand_or_jump()
							else
								fallback()
							end
						end, {\"i\", \"s\"})";
          "<S-Tab>" = "cmp.mapping(function(fallback)
							if cmp.visible() then
								cmp.select_prev_item()
							elseif luasnip.jumpable(-1) then
								luasnip.jump(-1)
							else
								fallback()
							end
						end, {\"i\", \"s\"})";
        };
        sources = [
          {name = "nvim_lua";}
          {name = "nvim_lsp";}
          {name = "cmdline";}
          {name = "path";}
          {name = "luasnip";}
          {name = "buffer";}
        ];
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        window = {
          documentation.border = [
            "╭"
            "─"
            "╮"
            "│"
            "╯"
            "─"
            "╰"
            "│"
          ];
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-cmdline.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
  };
  extraConfigLua =
    /*
    lua
    */
    ''
      -- Extra options for cmp-cmdline setup
      local cmp = require("cmp")
      cmp.setup.cmdline(":", {
      	mapping = cmp.mapping.preset.cmdline(),
      	sources = cmp.config.sources({
      		{ name = "path" },
      	}, {
      		{
      			name = "cmdline",
      			option = {
      				ignore_cmds = { "Man", "!" },
      			},
      		},
      	}),
      })
    '';
  extraPlugins = builtins.attrValues {
    inherit
      (pkgs.vimPlugins)
      friendly-snippets
      ;
  };
}
