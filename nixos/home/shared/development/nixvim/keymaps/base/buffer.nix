[
  # Windows / Buffers
  {
    key = "<C-j>";
    mode = "n";
    action = "<C-w>j";
    options = {
      silent = true;
      noremap = true;
      desc = "Navigate window down";
    };
  }
  {
    key = "<C-k>";
    mode = "n";
    action = "<C-w>k";
    options = {
      silent = true;
      noremap = true;
      desc = "Navigate window up";
    };
  }
  {
    key = "<C-h>";
    mode = "n";
    action = "<C-w>h";
    options = {
      silent = true;
      noremap = true;
      desc = "Navigate window left";
    };
  }
  {
    key = "<C-l>";
    mode = "n";
    action = "<C-w>l";
    options = {
      silent = true;
      noremap = true;
      desc = "Navigate window right";
    };
  }
  {
    key = "<leader>v";
    mode = "n";
    action = "<C-w>v";
    options = {
      silent = true;
      noremap = true;
      desc = "Create vertical window";
    };
  }
  {
    key = "<leader>h";
    mode = "n";
    action = "<C-w>s";
    options = {
      silent = true;
      noremap = true;
      desc = "Create horizontal window";
    };
  }
  {
    key = "<leader>q";
    mode = "n";
    action = "<cmd> %bdelete <bar> edit# <bar> normal`\" <CR>";
    options = {
      silent = true;
      noremap = true;
      desc = "Close other buffers";
    };
  }
  {
    key = "<leader>x";
    mode = "n";
    action = "<cmd> Bdelete <CR>";
    options = {
      silent = true;
      noremap = true;
      desc = "Close current buffer";
    };
  }
  {
    key = "gn";
    mode = "n";
    action = "<C-I>";
    options = {
      silent = true;
      noremap = true;
      desc = "Go next in buffer history";
    };
  }
  {
    key = "gb";
    mode = "n";
    action = "<C-O>";
    options = {
      silent = true;
      noremap = true;
      desc = "Go back in buffer history";
    };
  }
]
