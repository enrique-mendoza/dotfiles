{...}: {
  programs.nixvim.plugins.lsp = {
    enable = true;
    keymaps.extra = [
      {
        key = "gD";
        action = "<cmd>FzfLua lsp_declarations<cr>";
        options.desc = "Go to declaration";
      }
      {
        key = "gd";
        action = "<cmd>FzfLua lsp_definitions<cr>";
        options.desc = "Go to definition";
      }
      {
        key = "go";
        action = "<cmd>FzfLua lsp_typedefs<cr>";
        options.desc = "Go to type definition";
      }
      {
        key = "K";
        action = "<cmd>lua vim.lsp.buf.hover()<cr>";
        options.desc = "Hover";
      }
      {
        key = "gi";
        action = "<cmd>FzfLua lsp_implementations<cr>";
        options.desc = "List implementations";
      }
      {
        key = "gr";
        action = "<cmd>FzfLua lsp_references<cr>";
        options.desc = "List references";
      }
      {
        key = "gs";
        action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
        options.desc = "Signature help";
      }
    ];
    servers = {
      angularls.enable = true;
      astro.enable = true;
      cssls.enable = true;
      dockerls.enable = true;
      docker_compose_language_service.enable = true;
      html.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      nixd.enable = true;
      tailwindcss.enable = true;
      taplo.enable = true;
      ts_ls.enable = true;
      yamlls.enable = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>FzfLua lsp_code_actions<cr>";
      options.desc = "Code actions";
    }
    {
      mode = "v";
      key = "<leader>ca";
      action = "<cmd>FzfLua lsp_code_actions<cr>";
      options.desc = "Code actions";
    }
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>FzfLua diagnostics_document<cr>";
      options.desc = "Document diagnostics";
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = "<cmd>FzfLua lsp_document_symbols<cr>";
      options.desc = "Document symbols";
    }
    {
      mode = "n";
      key = "<leader>ci";
      action = "<cmd>FzfLua lsp_implementations<cr>";
      options.desc = "Implementations";
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      options.desc = "Line diagnostics";
    }
    {
      mode = "n";
      key = "<leader>xn";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
      options.desc = "Next diagnostic";
    }
    {
      mode = "n";
      key = "<leader>xp";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
      options.desc = "Prev diagnostic";
    }
    {
      mode = "n";
      key = "<leader>cr";
      action = "<cmd>FzfLua lsp_references<cr>";
      options.desc = "References";
    }
    {
      mode = "n";
      key = "<leader>cn";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
      options.desc = "Rename";
    }
    {
      mode = "n";
      key = "<leader>ud";
      action = "<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<cr>";
      options.desc = "Toggle diagnostics";
    }
    {
      mode = "n";
      key = "<leader>uh";
      action = "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>";
      options.desc = "Toggle inlay hints";
    }
    {
      mode = "n";
      key = "<leader>xX";
      action = "<cmd>FzfLua diagnostics_workspace<cr>";
      options.desc = "Workspace diagnostics";
    }
    {
      mode = "n";
      key = "<leader>cS";
      action = "<cmd>FzfLua lsp_workspace_symbols<cr>";
      options.desc = "Workspace symbols";
    }
  ];
}
