{...}: {
  programs.nixvim.plugins = {
    dashboard = {
      enable = true;
      settings = {
        theme = "doom";
        hide = {
          statusline = false;
        };
        config = {
          header = [
            "                                                     "
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ "
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ "
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ "
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ "
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ "
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ "
            "                                                     "
          ];
          center = [
            {
              action = "FzfLua files";
              desc = " Find File";
              icon = " ";
              key = "f";
            }
            {
              action = "ene | startinsert";
              desc = " New File";
              icon = " ";
              key = "n";
            }
            {
              action = "FzfLua live_grep";
              desc = " Find Text";
              icon = " ";
              key = "g";
            }
            {
              action = "FzfLua oldfiles";
              desc = " Recent Files";
              icon = " ";
              key = "r";
            }
            {
              action = "FzfLua files cwd=~/dotfiles/modules/home/neovim";
              desc = " Config";
              icon = " ";
              key = "c";
            }
            {
              action = "qa";
              desc = " Quit";
              icon = " ";
              key = "q";
            }
          ];
          footer = [];
          vertical_center = true;
        };
      };
    };

    lualine.enable = true;
    noice = {
      enable = true;
      settings = {
        cmdline.view = "cmdline_popup";
        views.cmdline_popup = {
          position = {
            row = "10%";
            col = "50%";
          };
          size = {
            width = 60;
            height = "auto";
          };
          border.style = "rounded";
        };
      };
    };
    nui.enable = true;

    oil = {
      enable = true;
      settings = {
        columns = [
          {__unkeyed-1 = "icon";}
        ];
        default_file_explorer = true;
        view_options.show_hidden = true;
      };
    };
    oil-git-status.enable = true;

    which-key = {
      enable = true;
      settings = {
        disable = {
          buftypes = [];
          filetypes = ["TelescopePrompt"];
        };
        plugins = {
          marks = true;
          presets = {
            g = false;
            motions = false;
            nav = false;
            operators = false;
            text_objects = false;
            windows = false;
            z = false;
          };
          registers = true;
          spelling = {
            enabled = true;
            suggestions = 20;
          };
        };
        preset = "helix";
        show_help = false;
        show_keys = false;
        spec = [
          {
            __unkeyed-1 = "<leader>b";
            group = "buffers";
          }
          {
            __unkeyed-1 = "<leader>c";
            group = "code";
          }
          {
            __unkeyed-1 = "<leader>d";
            group = "debug";
          }
          {
            __unkeyed-1 = "<leader>f";
            group = "file/find";
          }
          {
            __unkeyed-1 = "<leader>g";
            group = "git";
          }
          {
            __unkeyed-1 = "<leader>s";
            group = "search";
          }
          {
            __unkeyed-1 = "<leader>t";
            group = "test";
          }
          {
            __unkeyed-1 = "<leader>u";
            group = "ui";
          }
          {
            __unkeyed-1 = "<leader>x";
            group = "diagnostics/quickfix";
          }
        ];
        win = {
          border = "rounded";
          no_overlap = false;
          padding = [1 2];
          title = false;
          title_pos = "center";
          zindex = 1000;
        };
      };
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "_";
      action = "<cmd>Oil<cr>";
      options.desc = "Open Oil (parent dir)";
    }
  ];
}
