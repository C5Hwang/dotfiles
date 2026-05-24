# Zsh

Managed targets:

- `~/.zshenv`
- `~/.config/zsh/init.zsh`

Bootstrap script: `run_once_after_10-zsh-bootstrap.sh.tmpl`, rendered to `10-zsh-bootstrap.sh` when the `zsh` group is selected.

## Key Changes

- Moves shell, Git, and Go paths toward the XDG base directory layout.
- Initializes Starship for the prompt.
- Initializes zinit for zsh plugin management.
- Loads completion, autosuggestion, fzf-tab, syntax highlighting, last-working-dir, and extract integrations.
- Activates mise, fzf, zoxide, and yazi shell integration.

## Command Replacements

| Command     | Replacement             | Purpose                                        |
| ----------- | ----------------------- | ---------------------------------------------- |
| `vim` / `v` | `nvim`                  | Use Neovim as the default terminal editor.     |
| `ls`        | `eza --icons`           | Modern directory listing with icons.           |
| `ll`        | `eza --icons -lh`       | Long directory listing.                        |
| `la`        | `eza --icons -la`       | Long directory listing including hidden files. |
| `du`        | `dust`                  | More readable disk usage.                      |
| `df`        | `duf`                   | More readable filesystem usage.                |
| `top`       | `btop`                  | Modern terminal system monitor.                |
| `cd`        | `z` from zoxide         | Frecency-based directory jumping.              |
| `zi`        | zoxide interactive mode | Interactive directory jumping.                 |

## Loaded Tools

| Tool                    | Role                                             |
| ----------------------- | ------------------------------------------------ |
| Starship                | Prompt.                                          |
| zinit                   | zsh plugin manager.                              |
| zsh-completions         | Extra completions.                               |
| zsh-autosuggestions     | Inline command suggestions.                      |
| fzf-tab                 | Fuzzy completion selection.                      |
| zsh-syntax-highlighting | Command-line syntax highlighting.                |
| mise                    | Runtime and CLI tool activation.                 |
| fzf                     | Shell fuzzy finder integration.                  |
| zoxide                  | Directory jumping.                               |
| yazi                    | File manager with cwd handoff back to the shell. |
