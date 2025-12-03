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
  {
    mode = "n";
    key = "gy";
    action = "<cmd>Lspsaga goto_type_definition<cr>";
    options = {
      desc = "[g]o to t[y]pe definition with LSP";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "gi";
    action = "<cmd>Lspsaga finder imp<cr>";
    options = {
      desc = "[g]o to [i]mplementation with LSP";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>lff";
    action = "<cmd>Lspsaga finder<cr>";
    options = {
      desc = "[f]ind with LSP";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>r";
    action = "<cmd>Lspsaga rename<cr>";
    options = {
      desc = "[r]ename with LSP";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sd";
    action = "<cmd>Lspsaga hover_doc<cr>";
    options = {
      desc = "[s]how [d]ocumentation with LSP";
      silent = true;
    };
  }
]
