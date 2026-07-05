<h1 id="top" align="center">Dotfiles 🚀</h1>

![preview](./.screenshots/nixos.png)

## Installation

### Prerequisites

Install NixOS with the [graphical ISO](https://nixos.org/download/), then reboot into the new system.

### Steps

1. Clone the repo:

   ```bash
   nix-shell -p git --run "git clone -b nixos https://github.com/enrique-mendoza/dotfiles.git ~/dotfiles"
   ```

2. Add the hardware config (gitignored, but Nix needs it tracked to see it):

   ```bash
   cp /etc/nixos/hardware-configuration.nix ~/dotfiles/hosts/desktop/hardware-configuration.nix
   git -C ~/dotfiles add -N -f hosts/desktop/hardware-configuration.nix
   ```

3. Rebuild:

   ```bash
   sudo nixos-rebuild switch --flake ~/dotfiles#desktop
   ```

   This registers the flake as `nixcfg`, so future rebuilds can just run `rebuild`.
