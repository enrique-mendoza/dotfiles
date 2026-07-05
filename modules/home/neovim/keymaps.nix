{...}: {
  programs.nixvim.keymaps = [
    # indent while remaining in visual mode
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options.desc = "Indent left";
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options.desc = "Indent right";
    }

    # better ^ and $
    {
      mode = ["n" "o" "x"];
      key = "<S-l>";
      action = "g_";
      options.desc = "End of line";
    }
    {
      mode = ["n" "o" "x"];
      key = "<S-h>";
      action = "^";
      options.desc = "Start of line";
    }

    # search within visual selection
    {
      mode = "x";
      key = "/";
      action = "<Esc>/\\%V";
      options.desc = "Search in selection";
    }

    # splits
    {
      mode = "n";
      key = "<leader>-";
      action = "<cmd>split<CR>";
      options.desc = "Split Window Below";
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<cmd>vsplit<CR>";
      options.desc = "Split Window Right";
    }

    # buffers
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options.desc = "Delete buffer";
    }
    {
      mode = "n";
      key = "<leader>bn";
      action = "<cmd>bnext<cr>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<cmd>BufferLineTogglePin<cr>";
      options.desc = "Pin buffer";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>bprevious<cr>";
      options.desc = "Prev buffer";
    }

    # ui/toggle
    {
      mode = "n";
      key = "<leader>ub";
      action = "<cmd>lua vim.o.bg = vim.o.bg == 'dark' and 'light' or 'dark'<cr>";
      options.desc = "Toggle background";
    }
    {
      mode = "n";
      key = "<leader>uc";
      action = "<cmd>lua vim.opt.conceallevel = vim.opt.conceallevel:get() == 0 and 2 or 0<cr>";
      options.desc = "Toggle conceal";
    }
    {
      mode = "n";
      key = "<leader>ul";
      action = "<cmd>lua vim.opt.number = not vim.opt.number:get()<cr>";
      options.desc = "Toggle line numbers";
    }
    {
      mode = "n";
      key = "<leader>uL";
      action = "<cmd>lua vim.opt.relativenumber = not vim.opt.relativenumber:get()<cr>";
      options.desc = "Toggle relative numbers";
    }
    {
      mode = "n";
      key = "<leader>us";
      action = "<cmd>lua vim.opt.spell = not vim.opt.spell:get()<cr>";
      options.desc = "Toggle spelling";
    }
    {
      mode = "n";
      key = "<leader>uw";
      action = "<cmd>lua vim.opt.wrap = not vim.opt.wrap:get()<cr>";
      options.desc = "Toggle wrap";
    }

    # move text up and down in visual mode
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move text down";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move text up";
    }
  ];
}
