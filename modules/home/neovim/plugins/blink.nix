{...}: {
  programs.nixvim.plugins.blink-cmp = {
    enable = true;
    settings = {
      appearance = {
        nerd_font_variant = "mono";
        use_nvim_cmp_as_default = true;
      };
      completion.documentation.auto_show = true;
      keymap = {
        preset = "default";
        "<CR>" = ["accept" "fallback"];
        "<C-\\>" = ["hide" "fallback"];
        "<C-n>" = ["select_next" "show"];
        "<Tab>" = ["select_next" "snippet_forward" "fallback"];
        "<C-p>" = ["select_prev"];
        "<C-b>" = ["scroll_documentation_up" "fallback"];
        "<C-f>" = ["scroll_documentation_down" "fallback"];
      };
      sources.default = ["lsp" "path" "snippets" "buffer"];
    };
  };
}
