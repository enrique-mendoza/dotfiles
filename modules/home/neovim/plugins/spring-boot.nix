{
  pkgs,
  lib,
  ...
}: let
  javaTools = import ./java-tools.nix {inherit pkgs lib;};
in {
  programs.nixvim.plugins.spring-boot = {
    enable = true;
    settings = {
      java_cmd = "${pkgs.jdk21}/bin/java";
      ls_path = javaTools.springBootLsJar;
    };
  };
}
