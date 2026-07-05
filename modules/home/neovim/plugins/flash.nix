{...}: {
  programs.nixvim.plugins.flash.enable = true;

  programs.nixvim.keymaps = [
    {
      mode = ["n" "x" "o"];
      key = "s";
      action = "<cmd>lua require('flash').jump()<cr>";
      options.desc = "Flash";
    }
    {
      mode = ["n" "x" "o"];
      key = "S";
      action = "<cmd>lua require('flash').treesitter()<cr>";
      options.desc = "Flash Treesitter";
    }
    {
      mode = "o";
      key = "r";
      action = "<cmd>lua require('flash').remote()<cr>";
      options.desc = "Remote Flash";
    }
    {
      mode = "c";
      key = "<c-s>";
      action = "<cmd>lua require('flash').toggle()<cr>";
      options.desc = "Toggle Flash Search";
    }
    {
      mode = ["o" "x"];
      key = "R";
      action = "<cmd>lua require('flash').treesitter_search()<cr>";
      options.desc = "Treesitter Search";
    }
  ];
}
