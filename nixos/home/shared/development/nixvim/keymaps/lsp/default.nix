[
  {
    mode = "n";
    key = "<leader>k";
    action = "<cmd>Lspsaga hover_doc<CR>";
    options = {
      desc = "hover [k]nowledge with LSP";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "gd";
    action = "<cmd>Lspsaga goto_definition<cr>";
    options = {
      desc = "[g]o to [d]efinition with LSP";
      silent = true;
    };
  }
]
