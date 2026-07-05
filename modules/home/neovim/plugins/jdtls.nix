{
  pkgs,
  lib,
  ...
}: let
  javaTools = import ./java-tools.nix {inherit pkgs lib;};
in {
  programs.nixvim.plugins.jdtls = {
    enable = true;
    settings = {
      cmd = ["jdtls" "--jvm-arg=-javaagent:${pkgs.lombok}/share/java/lombok.jar"];
      init_options.bundles =
        javaTools.javaDebugJars
        ++ javaTools.javaTestJars
        ++ javaTools.springBootBundleJars;
    };
  };

  programs.nixvim.plugins.dap.configurations.java = [
    {
      type = "java";
      request = "attach";
      name = "Attach (remote JVM debug, port 5005)";
      hostName = "127.0.0.1";
      port = 5005;
    }
  ];

  programs.nixvim.extraConfigLua = ''
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client.name == "jdtls" then
          require("jdtls").setup_dap({ hotcodereplace = "auto" })
        end
      end,
    })
  '';
}
