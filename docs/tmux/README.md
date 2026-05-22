# tmux

Managed target: `~/.tmux.conf`.

Bootstrap script: `run_once_after_30-tmux-plugins.sh.tmpl`, rendered to `30-tmux-plugins.sh` when the `tmux` group is selected.

## Key Changes

- Uses a custom prefix, mouse support, vi copy mode, true color, and modern terminal key passthrough.
- Uses Catppuccin Mocha plus TPM plugins: `tmux-sensible`, `tmux-yank`, and `catppuccin/tmux`.
- Provides shortcuts to capture pane history and open it in `$EDITOR`, Zed, or Neovim.

## Keymap

| Key                   | Action                                         |
| --------------------- | ---------------------------------------------- |
| `Ctrl+a`              | tmux prefix.                                   |
| `prefix+-`            | Split vertically in the current pane path.     |
| `prefix+\`            | Split horizontally in the current pane path.   |
| `prefix+h/j/k/l`      | Move between panes.                            |
| `prefix+Ctrl+h/j/k/l` | Resize panes repeatedly.                       |
| `prefix+Ctrl+p`       | Previous window.                               |
| `prefix+Ctrl+n`       | Next window.                                   |
| `prefix+[`            | Enter copy mode.                               |
| `v` in copy mode      | Begin selection.                               |
| `y` in copy mode      | Copy selection and leave copy mode.            |
| `prefix+e`            | Capture pane history and open it in `$EDITOR`. |
| `prefix+z`            | Capture pane history and open it in Zed.       |
| `prefix+v`            | Capture pane history and open it in Neovim.    |
