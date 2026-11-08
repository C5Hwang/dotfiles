# OmniWM

Managed targets:

- `~/.config/omniwm/settings.toml`
- `~/.config/omniwm/shell/shell.toml`

## Key Changes

- Uses the Niri-style scrolling layout by default, with two columns visible at a time and a looping column strip.
- Opens new columns at half width, with 1/3, 1/2, and 2/3 size presets and a 5% resize step.
- Assigns workspaces 1, 2, and 3 to the main, secondary, and tertiary displays.
- Uses 6 pt gaps and outer margins, with a 30 pt top margin.
- Places the workspace bar over the menu bar, with the OmniWM, workspaces, and scratchpads widgets on the leading side.
- Uses custom monitor routing with saved two-display home and three-display office arrangements.
- Sets minimum layout sizes for Codex, Commander One, Chrome, Zed, Safari, Zen, Firefox, Dia, Spotify, Discord, Ghostty, Outlook, and Messages.
- Enables the window switcher, with Command-Tab scoped to the active workspace and Option-Tab scoped to all workspaces.
- Keeps the four-finger Overview gesture while disabling trackpad column scrolling, workspace swipes, and window move or resize gestures.
- Disables focus-follows-mouse, window borders, clipboard history, the Quake terminal, and IPC for `omniwmctl`.

## Keymap

These keymaps are stored in the `hotkeys` entries of `~/.config/omniwm/settings.toml`. OmniWM actions not listed here are unassigned.

| Area                | Key                                  | Action                                                                        |
| ------------------- | ------------------------------------ | ----------------------------------------------------------------------------- |
| Window focus        | `Option+h/j/k/l`                     | Focus the window left, down, up, or right.                                    |
| Move window         | `Option+Shift+h/j/k/l`               | Move the focused window left, down, up, or right.                             |
| Move column         | `Ctrl+Option+Shift+h/l`              | Move the focused column left or right.                                        |
| Workspace focus     | `Option+[`                           | Switch to the previous workspace.                                             |
| Workspace focus     | `Option+]`                           | Switch to the next workspace.                                                 |
| Workspace slots     | `Option+1` to `Option+9`             | Switch to workspace slot 1 through 9 on the current monitor.                  |
| Move window to slot | `Option+Shift+1` to `Option+Shift+9` | Move the focused window to workspace slot 1 through 9 on the current monitor. |
| Move to workspace   | `Option+Shift+[`                     | Move the focused window to the workspace above.                               |
| Move to workspace   | `Option+Shift+]`                     | Move the focused window to the workspace below.                               |
| Monitor focus       | `Ctrl+Option+[`                      | Focus the previous monitor in order.                                          |
| Monitor focus       | `Ctrl+Option+]`                      | Focus the next monitor in order.                                              |
| Move to monitor     | `Ctrl+Option+h/j/k/l`                | Move the focused window to the monitor left, below, above, or right.          |
| Resize column       | `Option+-`                           | Shrink the focused column along its primary span.                             |
| Resize column       | `Option+=`                           | Grow the focused column along its primary span.                               |
| Resize window       | `Ctrl+Option+-`                      | Shrink the focused window along its secondary span.                           |
| Resize window       | `Ctrl+Option+=`                      | Grow the focused window along its secondary span.                             |
| Sizing              | `Option+.`                           | Cycle forward through the size presets.                                       |
| Sizing              | `Option+/`                           | Balance window sizes.                                                         |
| Fullscreen          | `Option+f`                           | Toggle OmniWM fullscreen.                                                     |
| Tabs                | `Option+t`                           | Toggle tabbed mode for the focused column.                                    |
| Floating            | `Option+Shift+w`                     | Toggle floating for the focused window.                                       |
| Scratchpad          | `Option+backquote`                   | Toggle scratchpad 1.                                                          |
| Scratchpad          | `Option+Shift+backquote`             | Toggle the focused window's assignment to scratchpad 1.                       |
| Menu                | `Ctrl+Option+m`                      | Open Menu Anywhere.                                                           |
| Overview            | `Ctrl+Option+o`                      | Toggle Overview.                                                              |
