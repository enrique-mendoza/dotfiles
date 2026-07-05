{pkgs, ...}: {
  programs.nixvim.plugins = {
    dap.enable = true;
    dap-ui.enable = true;
    dap-virtual-text.enable = true;

    dap.adapters.servers.pwa-node = {
      host = "localhost";
      port = "\${port}";
      executable = {
        command = "${pkgs.vscode-js-debug}/bin/js-debug";
        args = ["\${port}"];
      };
    };

    dap.configurations = let
      nodeConfigs = [
        {
          type = "pwa-node";
          request = "launch";
          name = "Launch file";
          program = "\${file}";
          cwd = "\${workspaceFolder}";
        }
        {
          type = "pwa-node";
          request = "attach";
          name = "Attach to process";
          processId.__raw = "require('dap.utils').pick_process";
          cwd = "\${workspaceFolder}";
        }
      ];
    in {
      javascript = nodeConfigs;
      typescript = nodeConfigs;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>dB";
      action = "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>";
      options.desc = "Breakpoint Condition";
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options.desc = "Dap UI";
    }
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>lua require('dap').disconnect()<cr>";
      options.desc = "Disconnect";
    }
    {
      mode = "n";
      key = "<leader>dj";
      action = "<cmd>lua require('dap').down()<cr>";
      options.desc = "Down";
    }
    {
      mode = "n";
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options.desc = "Eval";
    }
    {
      mode = "v";
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options.desc = "Eval";
    }
    {
      mode = "n";
      key = "<leader>dg";
      action = "<cmd>lua require('dap').session()<cr>";
      options.desc = "Get Session";
    }
    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options.desc = "Pause";
    }
    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require('dap').run_last()<cr>";
      options.desc = "Run Last";
    }
    {
      mode = "n";
      key = "<leader>dC";
      action = "<cmd>lua require('dap').run_to_cursor()<cr>";
      options.desc = "Run to Cursor";
    }
    {
      mode = "n";
      key = "<leader>da";
      action = "<cmd>lua require('dap').continue({ before = get_args })<cr>";
      options.desc = "Run with Args";
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>lua require('dap').continue()<cr>";
      options.desc = "Run/Continue";
    }
    {
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>lua require('dap').session()<cr>";
      options.desc = "Session";
    }
    {
      mode = "n";
      key = "<leader>di";
      action = "<cmd>lua require('dap').step_into()<cr>";
      options.desc = "Step Into";
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = "<cmd>lua require('dap').step_out()<cr>";
      options.desc = "Step Out";
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>lua require('dap').step_over()<cr>";
      options.desc = "Step Over";
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>lua require('dap').terminate()<cr>";
      options.desc = "Terminate";
    }
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>lua require('dap').toggle_breakpoint()<cr>";
      options.desc = "Toggle Breakpoint";
    }
    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>lua require('dap').repl.toggle()<cr>";
      options.desc = "Toggle REPL";
    }
    {
      mode = "n";
      key = "<leader>dk";
      action = "<cmd>lua require('dap').up()<cr>";
      options.desc = "Up";
    }
    {
      mode = "n";
      key = "<leader>dw";
      action = "<cmd>lua require('dap.ui.widgets').hover()<cr>";
      options.desc = "Widgets";
    }
  ];
}
