{...}: {
  programs.nixvim.plugins.multicursors = {
    enable = true;
    settings = {
      hint_config = {
        float_opts.border = "rounded";
        position = "bottom-right";
      };
      generate_hints = {
        normal = true;
        insert = true;
        extend = true;
        config = {
          column_count = 1;
          max_hint_length = 25;
        };
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = ["n" "v"];
      key = "<c-n>";
      action = "<cmd>MCstart<cr>";
      options.desc = "Create a selection for selected text or word under the cursor";
    }
  ];
}
