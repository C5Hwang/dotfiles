# yabai + skhd

Managed targets:

- `~/.config/yabai/yabairc`
- `~/.config/skhd/skhdrc`

## Key Changes

- Uses yabai BSP tiling with small gaps and padding.
- Loads the yabai scripting addition and reloads it when Dock restarts.
- Leaves common system, utility, chat, and menu-bar style apps unmanaged.
- Adds Ghostty window create/destroy signals to work around macOS tiling issues with Ghostty tabs.
- Uses skhd as the keybinding layer; skhd commands call `yabai -m`.

## Keymap

These keymaps are managed by skhd in `~/.config/skhd/skhdrc` and operate on yabai windows, displays, and spaces. The bindings expect `jq` because several commands query yabai's JSON state.

| Area                 | Key                            | Action                                                                               |
| -------------------- | ------------------------------ | ------------------------------------------------------------------------------------ |
| Window focus         | `Alt+h/j/k/l`                  | Focus west, south, north, or east window.                                            |
| Space focus          | `Alt+[`                        | Focus the previous non-fullscreen space on the current display.                      |
| Space focus          | `Alt+]`                        | Focus the next non-fullscreen space on the current display.                          |
| Display focus        | `Shift+Alt+[`                  | Focus the previous display, wrapping to the last display.                            |
| Display focus        | `Shift+Alt+]`                  | Focus the next display, wrapping to the first display.                               |
| Numbered spaces      | `Alt+1` to `Alt+0`             | Focus non-fullscreen space 1 through 10 on the current display.                      |
| Rotate               | `Alt+r`                        | Rotate the current space 90 degrees.                                                 |
| Move window to space | `Shift+Alt+1` to `Shift+Alt+0` | Move the focused window to non-fullscreen space 1 through 10 on the current display. |
| Move space           | `Shift+Alt+a`                  | Move the current space left.                                                         |
| Move space           | `Shift+Alt+d`                  | Move the current space right.                                                        |
| Swap or move         | `Shift+Alt+h/j/k/l`            | Swap tiled windows, or move floating windows by 40 px.                               |
| Grow window          | `Ctrl+Alt+h/j/k/l`             | Increase the focused window size in the selected direction.                          |
| Shrink window        | `Ctrl+Shift+Alt+h/j/k/l`       | Decrease the focused window size in the selected direction.                          |
| Floating             | `Shift+Alt+w`                  | Toggle floating and center the window.                                               |
| Zoom                 | `Alt+d`                        | Toggle parent zoom.                                                                  |
| Zoom                 | `Alt+f`                        | Toggle fullscreen zoom.                                                              |
| Pin / PIP            | `Alt+p`                        | Toggle sticky and picture-in-picture behavior.                                       |
| Spaces               | `Alt+n`                        | Create a new space and focus it.                                                     |
| Spaces               | `Alt+q`                        | Destroy the focused space.                                                           |
