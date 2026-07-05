{...}: {
  programs.nixvim.plugins.render-markdown = {
    enable = true;
    settings = {
      render_modes = ["n" "c" "t"];
      heading.icons = ["# " "## " "### " "#### " "##### " "###### "];
      code.sign = false;
      checkbox = {
        unchecked.icon = "[ ] ";
        checked.icon = "[x] ";
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>um";
      action = "<cmd>RenderMarkdown toggle<cr>";
      options.desc = "Toggle markdown render";
    }
  ];
}
