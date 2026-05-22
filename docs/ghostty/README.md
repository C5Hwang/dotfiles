# Ghostty

Managed target: `~/.config/ghostty/config.ghostty`.

## Key Changes

- Uses `Xcode Dark hc`, translucent background opacity, and background blur.
- Uses `JetBrains Mono Nerd Font` with `Sarasa Term SC` for CJK fallback.
- Enables SSH-oriented shell integration through `ssh-terminfo` and `ssh-env`.
- Configures a top quick terminal with auto-hide.

## Keymap

| Key              | Action                                                                                                              |
| ---------------- | ------------------------------------------------------------------------------------------------------------------- |
| `Ctrl+backquote` | Toggle the quick terminal.                                                                                          |
| `Shift+Enter`    | Send a compatibility sequence for terminal applications that do not handle Ghostty's default modified-key encoding. |
| `Ctrl+Enter`     | Send a carriage return compatibility sequence.                                                                      |
| `Option`         | Behave as Alt on macOS instead of entering special characters.                                                      |
