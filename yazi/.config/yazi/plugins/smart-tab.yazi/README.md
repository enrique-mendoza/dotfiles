# smart-tab.yazi

Make repo for [smart-tab](https://yazi-rs.github.io/docs/tips/#smart-tab) so that it can be installed via `ya`.

## Installation

```sh
ya pack -a wekauwau/smart-tab
```

## Usage

To bind your <kbd>t</kbd> key to the plugin, add in your `~/.config/yazi/keymap.toml`:

```toml
[[manager.prepend_keymap]]
on   = "t"
run  = "plugin smart-tab"
desc = "Create a tab and enter the hovered directory"
```
