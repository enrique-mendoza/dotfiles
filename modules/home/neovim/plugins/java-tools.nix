{
  pkgs,
  lib,
}: let
  jarsIn = dir:
    lib.mapAttrsToList (name: _: "${dir}/${name}")
    (lib.filterAttrs (name: type: type == "regular" && lib.hasSuffix ".jar" name)
      (builtins.readDir dir));
in rec {
  javaDebug = pkgs.fetchzip {
    url = "https://open-vsx.org/api/vscjava/vscode-java-debug/0.59.0/file/vscjava.vscode-java-debug-0.59.0.vsix";
    hash = "sha256-4Za8yPZYaZ+ZBzehm+fbujgpS+G+2FN1NqUpqlLL1Pc=";
    stripRoot = false;
    extension = "zip";
  };
  javaDebugJars = jarsIn "${javaDebug}/extension/server";

  javaTest = pkgs.fetchzip {
    url = "https://open-vsx.org/api/vscjava/vscode-java-test/0.45.0/file/vscjava.vscode-java-test-0.45.0.vsix";
    hash = "sha256-0qjPLqlUnv3myBKZrOEv5UFmENk94ojfwnYFPjm6Qi0=";
    stripRoot = false;
    extension = "zip";
  };
  javaTestJars = jarsIn "${javaTest}/extension/server";

  springBoot = pkgs.fetchzip {
    url = "https://open-vsx.org/api/VMware/vscode-spring-boot/2.2.0/file/VMware.vscode-spring-boot-2.2.0.vsix";
    hash = "sha256-OZ3FrckSBJVOH3zkf9p1VTuTHH+Jwj3TpJrEOfZcm3s=";
    stripRoot = false;
    extension = "zip";
  };

  # Only the jars spring-boot.nvim's own `is_bundle_jar` filter registers as jdtls bundles.
  springBootBundleJars = map (name: "${springBoot}/extension/jars/${name}") [
    "io.projectreactor.reactor-core.jar"
    "org.reactivestreams.reactive-streams.jar"
    "jdt-ls-commons.jar"
    "jdt-ls-extension.jar"
    "sts-gradle-tooling.jar"
  ];

  springBootLsJar = builtins.head (jarsIn "${springBoot}/extension/language-server");
}
