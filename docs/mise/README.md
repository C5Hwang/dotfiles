# mise

Managed target: `~/.config/mise/config.toml`.

Bootstrap script: `run_once_after_20-mise-install.sh.tmpl`, rendered to `20-mise-install.sh` when the `mise` group is selected.

## Key Changes

mise is the global tool installer for this dotfile set. The managed config declares the following tool groups:

| Category               | Tools                                                   |
| ---------------------- | ------------------------------------------------------- |
| Languages and runtimes | go, uv, node, rust, python                              |
| Build tools            | cmake, ninja                                            |
| Editor and terminal    | neovim, tmux                                            |
| Modern Unix tools      | fzf, eza, bat, yazi, zoxide, bottom, ripgrep, dust, duf |
| Git tools              | delta, lazygit                                          |
| Data tools             | jq                                                      |
| AI tools               | codex, opencode                                         |
