{pkgs, ...}:
pkgs.mkShell {
  name = "angular";

  packages = with pkgs; [
    nodejs_22
    typescript
    typescript-language-server
    angular-language-server
    vscode-langservers-extracted
  ];

  shellHook = ''
    export NG_CLI_HOME="$HOME/.cache/devshell-angular"
    export PATH="$NG_CLI_HOME/node_modules/.bin:$PATH"
    if [ ! -f "$NG_CLI_HOME/node_modules/.bin/ng" ]; then
      echo "Installing @angular/cli (first time only)..."
      mkdir -p "$NG_CLI_HOME"
      npm install --prefix "$NG_CLI_HOME" @angular/cli --silent
    fi
    echo "Angular dev shell — node $(node --version), ng $(ng --version 2>/dev/null)"
  '';
}
