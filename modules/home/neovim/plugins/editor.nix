{pkgs, ...}: {
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      harpoon2
      plenary-nvim
    ];

    extraConfigLua = ''
      local harpoon = require("harpoon")
      harpoon:setup()
    '';

    plugins = {
      conform-nvim = {
        enable = true;
        settings = {
          format_on_save = {
            lsp_fallback = true;
            timeout_ms = 500;
          };
          formatters_by_ft = {
            astro = ["prettier"];
            css = ["prettier"];
            dockerfile = ["hadolint"];
            html = ["prettier"];
            java = ["google-java-format"];
            javascript = ["prettier"];
            json = ["prettier"];
            lua = ["stylua"];
            markdown = ["prettier"];
            nix = ["alejandra"];
            typescript = ["prettier"];
          };
        };
      };

      fzf-lua.enable = true;
      gitsigns.enable = true;
      grug-far.enable = true;
      lazygit.enable = true;
      luasnip.enable = true;

      mini = {
        enable = true;
        modules = {
          ai = {};
          comment = {};
          icons = {};
          pairs = {};
          splitjoin = {};
          surround = {};
        };
      };

      tmux-navigator.enable = true;
      todo-comments.enable = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>sa";
      action = "<cmd>FzfLua autocmds<cr>";
      options.desc = "Auto commands";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>FzfLua git_branches<cr>";
      options.desc = "Branches";
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = "<cmd>FzfLua grep_curbuf<cr>";
      options.desc = "Buffer";
    }
    {
      mode = "n";
      key = "<leader>gC";
      action = "<cmd>FzfLua git_bcommits<cr>";
      options.desc = "Buffer commits";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>FzfLua buffers<cr>";
      options.desc = "Buffers";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = "<cmd>FzfLua command_history<cr>";
      options.desc = "Command history";
    }
    {
      mode = "n";
      key = "<leader>sC";
      action = "<cmd>FzfLua commands<cr>";
      options.desc = "Commands";
    }
    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>FzfLua git_commits<cr>";
      options.desc = "Commits";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>Gitsigns diffthis<cr>";
      options.desc = "Diff hunk";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>FzfLua diagnostics_document<cr>";
      options.desc = "Document diagnostics";
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>FzfLua files cwd=~/dotfiles/modules/home/neovim<cr>";
      options.desc = "Find Config files";
    }
    {
      mode = "n";
      key = "<leader>fF";
      action = "<cmd>FzfLua files cwd=%:p:h<cr>";
      options.desc = "Find files (cwd)";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>FzfLua files<cr>";
      options.desc = "Find files (root)";
    }
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format({ async = true, lsp_fallback = true })<cr>";
      options.desc = "Format";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "<cmd>FzfLua git_files<cr>";
      options.desc = "Git files";
    }
    {
      mode = "n";
      key = "<leader>sG";
      action = "<cmd>FzfLua live_grep cwd=%:p:h<cr>";
      options.desc = "Grep (cwd)";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = "<cmd>FzfLua live_grep<cr>";
      options.desc = "Grep (root)";
    }
    {
      mode = "n";
      key = "<leader>h";
      action = "<cmd>lua require('harpoon'):list():add()<cr>";
      options.desc = "Harpoon File";
    }
    {
      mode = "n";
      key = "<leader>H";
      action = "<cmd>lua local harpoon = require('harpoon'); harpoon.ui:toggle_quick_menu(harpoon:list())<cr>";
      options.desc = "Harpoon Quick Menu";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>FzfLua help_tags<cr>";
      options.desc = "Help pages";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "<cmd>FzfLua keymaps<cr>";
      options.desc = "Keymaps";
    }
    {
      mode = "n";
      key = "<leader>gG";
      action = "<cmd>LazyGitCurrentFile<cr>";
      options.desc = "LazyGit (cwd)";
    }
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<cr>";
      options.desc = "LazyGit (root)";
    }
    {
      mode = "n";
      key = "<leader>sM";
      action = "<cmd>FzfLua manpages<cr>";
      options.desc = "Man pages";
    }
    {
      mode = "n";
      key = "<leader>sm";
      action = "<cmd>FzfLua marks<cr>";
      options.desc = "Marks";
    }
    {
      mode = "n";
      key = "<leader>fn";
      action = "<cmd>enew<cr>";
      options.desc = "New file";
    }
    {
      mode = "n";
      key = "<leader>gp";
      action = "<cmd>Gitsigns preview_hunk<cr>";
      options.desc = "Preview hunk";
    }
    {
      mode = "n";
      key = "<leader>sq";
      action = "<cmd>FzfLua quickfix<cr>";
      options.desc = "Quickfix list";
    }
    {
      mode = "n";
      key = "<leader>fR";
      action = "<cmd>FzfLua oldfiles cwd=%:p:h<cr>";
      options.desc = "Recent files (cwd)";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<cmd>FzfLua oldfiles<cr>";
      options.desc = "Recent files (root)";
    }
    {
      mode = "n";
      key = "<leader>gR";
      action = "<cmd>Gitsigns reset_buffer<cr>";
      options.desc = "Reset buffer";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
      options.desc = "Reset hunk";
    }
    {
      mode = "v";
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<cr>";
      options.desc = "Reset hunk";
    }
    {
      mode = "n";
      key = "<leader>sR";
      action = "<cmd>FzfLua resume<cr>";
      options.desc = "Resume";
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = "<cmd>GrugFar<cr>";
      options.desc = "Search and Replace";
    }
    {
      mode = "n";
      key = "<leader>sH";
      action = "<cmd>FzfLua highlights<cr>";
      options.desc = "Search highlight groups";
    }
    {
      mode = "n";
      key = "<leader>gS";
      action = "<cmd>Gitsigns stage_buffer<cr>";
      options.desc = "Stage buffer";
    }
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Gitsigns stage_hunk<cr>";
      options.desc = "Stage hunk";
    }
    {
      mode = "v";
      key = "<leader>gs";
      action = "<cmd>Gitsigns stage_hunk<cr>";
      options.desc = "Stage hunk";
    }
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>FzfLua lsp_document_symbols<cr>";
      options.desc = "Symbols (document)";
    }
    {
      mode = "n";
      key = "<leader>sS";
      action = "<cmd>FzfLua lsp_workspace_symbols<cr>";
      options.desc = "Symbols (workspace)";
    }
    {
      mode = "n";
      key = "<leader>uf";
      action = "<cmd>lua vim.b.autoformat = not vim.b.autoformat<cr>";
      options.desc = "Toggle autoformat (buffer)";
    }
    {
      mode = "n";
      key = "<leader>uF";
      action = "<cmd>lua vim.g.autoformat = not vim.g.autoformat<cr>";
      options.desc = "Toggle autoformat (global)";
    }
    {
      mode = "n";
      key = "<leader>gu";
      action = "<cmd>Gitsigns undo_stage_hunk<cr>";
      options.desc = "Undo stage hunk";
    }
    {
      mode = "n";
      key = "<leader>sW";
      action = "<cmd>FzfLua grep_cWORD<cr>";
      options.desc = "Word (cwd)";
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = "<cmd>FzfLua grep_cword<cr>";
      options.desc = "Word (root)";
    }
    {
      mode = "n";
      key = "<leader>sD";
      action = "<cmd>FzfLua diagnostics_workspace<cr>";
      options.desc = "Workspace diagnostics";
    }
  ];
}
