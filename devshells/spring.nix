{
  pkgs,
  jdk ? pkgs.jdk21,
  ...
}:
pkgs.mkShell {
  name = "spring-${jdk.version}";

  packages = with pkgs; [
    jdk
    maven
    gradle
    jdt-language-server
    spring-boot-cli
  ];

  shellHook = ''
    echo "Spring dev shell — $(java -version 2>&1 | head -1), mvn $(mvn --version 2>/dev/null | head -1 | awk '{print $3}')"
    export JAVA_HOME="${jdk}"
  '';
}
