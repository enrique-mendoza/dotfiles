{...}: {
  programs.nixvim.plugins.neotest = {
    enable = true;
    adapters = {
      jest.enable = true;
      java.enable = true;
    };
  };

  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>tT";
      action = "<cmd>lua require('neotest').run.run(vim.uv.cwd())<cr>";
      options.desc = "Run All Test Files (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>";
      options.desc = "Run File (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = "<cmd>lua require('neotest').run.run_last()<cr>";
      options.desc = "Run Last (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<cmd>lua require('neotest').run.run()<cr>";
      options.desc = "Run Nearest (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>to";
      action = "<cmd>lua require('neotest').output.open({ enter = true, auto_close = true })<cr>";
      options.desc = "Show Output (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tS";
      action = "<cmd>lua require('neotest').run.stop()<cr>";
      options.desc = "Stop (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tO";
      action = "<cmd>lua require('neotest').output_panel.toggle()<cr>";
      options.desc = "Toggle Output Panel (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<cmd>lua require('neotest').summary.toggle()<cr>";
      options.desc = "Toggle Summary (Neotest)";
    }
    {
      mode = "n";
      key = "<leader>tw";
      action = "<cmd>lua require('neotest').watch.toggle(vim.fn.expand('%'))<cr>";
      options.desc = "Toggle Watch (Neotest)";
    }
  ];
}
