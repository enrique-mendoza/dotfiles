{...}: {
  programs.nixvim.plugins.treesitter = {
    enable = true;
    settings = {
      highlight.enable = true;
      ensure_installed = ["java" "javascript" "markdown" "markdown_inline"];
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ut";
      action = "<cmd>lua vim.treesitter.stop()<cr>";
      options.desc = "Toggle treesitter highlight";
    }
  ];
}
