{...}: {
  keymaps = [
    # Scrolling
    {
      key = "J";
      mode = "n";
      action = "10jzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Move 10 lines down";
      };
    }
    {
      key = "K";
      mode = "n";
      action = "10kzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Move 10 lines up";
      };
    }
    {
      key = "J";
      mode = "v";
      action = "10jzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Move 10 lines down";
      };
    }
    {
      key = "K";
      mode = "v";
      action = "10kzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Move 10 lines up";
      };
    }

    # Shortcuts
    {
      key = ";";
      mode = "n";
      action = "A;<ESC>";
      options = {
        silent = true;
        noremap = true;
        desc = "End line with ';'";
      };
    }

    # Searching
    {
      key = "n";
      mode = "n";
      action = "nzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Next and center";
      };
    }
    {
      key = "N";
      mode = "n";
      action = "Nzz";
      options = {
        silent = true;
        noremap = true;
        desc = "Previous and center";
      };
    }
    {
      key = "<CR>";
      mode = "n";
      action = ":noh<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Delete search results";
      };
    }

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

    # NvimTree
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
  ];
}
