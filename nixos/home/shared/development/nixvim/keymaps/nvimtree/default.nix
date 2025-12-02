[
  {
    key = "<leader>1";
    mode = "n";
    action = "<cmd>NvimTreeFocus<CR>";
    options = {
      silent = true;
      noremap = true;
      desc = "Focus nvim tree";
    };
  }
  {
    key = "<leader>2";
    mode = "n";
    action = "<cmd>NvimTreeToggle<CR>";
    options = {
      silent = true;
      noremap = true;
      desc = "Toggle nvim tree";
    };
  }
  {
    key = "<leader>3";
    mode = "n";
    action = "<cmd>NvimTreeFindFile<CR>";
    options = {
      silent = true;
      noremap = true;
      desc = "Find file in nvim tree";
    };
  }
  {
    key = "<leader>e";
    mode = "n";
    action = "<cmd>cnext<CR>zz";
    options = {
      silent = true;
      noremap = true;
      desc = "Next quickfix";
    };
  }
  {
    key = "<leader>E";
    mode = "n";
    action = "<cmd>cprev<CR>zz";
    options = {
      silent = true;
      noremap = true;
      desc = "Prev quickfix";
    };
  }
]
