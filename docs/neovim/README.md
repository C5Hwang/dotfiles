# Neovim

Managed target: `~/.config/nvim`.

## Key Changes

- Uses `lazy.nvim` for plugin management and bootstraps it automatically.
- Uses Catppuccin Mocha, blink.cmp completion, Treesitter, mini.nvim modules, Mason, LSP, and conform.nvim.
- Supports C/C++, Go, Java, Python, and Rust language servers.
- Uses formatters such as clang-format, goimports, gofumpt, google-java-format, black, stylua, and rustfmt.
- Loads a smaller keymap-only module when running inside VS Code Neovim.

## Keymap

| Area       | Key                    | Mode           | Action                                                      |
| ---------- | ---------------------- | -------------- | ----------------------------------------------------------- |
| Leader     | `Space`                | All            | Set as `<leader>`.                                          |
| Leader     | `\`                    | All            | Set as `<localleader>`.                                     |
| Basic      | `S`                    | Normal, visual | Save the current buffer.                                    |
| Basic      | `;`                    | Normal, visual | Enter command-line mode.                                    |
| Terminal   | `Esc`                  | Terminal       | Leave terminal mode.                                        |
| Movement   | `Ctrl+h/j/k/l`         | Normal, visual | Move five columns or lines.                                 |
| Editing    | `o`                    | Normal, visual | Open a new line and return to normal mode.                  |
| Editing    | `Ctrl+Shift+j/k`       | Normal, visual | Move the current line down or up.                           |
| Clipboard  | `Y`                    | Visual         | Yank to the system clipboard.                               |
| Clipboard  | `P`                    | Normal, visual | Paste from the system clipboard.                            |
| Delete     | `<leader>d`            | Normal, visual | Delete into the black-hole register.                        |
| Windows    | `<leader>h/j/k/l`      | Normal, visual | Move between windows.                                       |
| Windows    | `<leader>t`            | Normal, visual | Move to the top-left window.                                |
| Windows    | `<leader>o`            | Normal, visual | Keep only the current window.                               |
| Splits     | `sh/sj/sk/sl`          | Normal, visual | Split left, down, up, or right.                             |
| Resize     | `Arrow keys`           | Normal, visual | Resize the current split.                                   |
| Tabs       | `tn`, `tc`, `[t`, `]t` | Normal, visual | Create, close, previous, or next tab.                       |
| Buffers    | `bn`, `bc`, `[b`, `]b` | Normal, visual | Create, close, previous, or next buffer.                    |
| Search     | `<leader>Enter`        | Normal, visual | Clear search highlighting.                                  |
| Files      | `<leader>e`            | Normal, visual | Open `mini.files`.                                          |
| Picker     | `<leader>ff`           | Normal, visual | Pick files with `mini.pick`.                                |
| Picker     | `<leader>fg`           | Normal, visual | Live grep with `mini.pick`.                                 |
| Picker     | `<leader>fb`           | Normal, visual | Pick buffers with `mini.pick`.                              |
| Formatting | `<leader>cf`           | Normal, visual | Format with `conform.nvim`, falling back to LSP formatting. |
| LSP        | `gd`                   | Normal         | Go to definition.                                           |
| LSP        | `gr`                   | Normal         | Show references.                                            |
| LSP        | `K`                    | Normal         | Show hover documentation.                                   |
| LSP        | `<leader>rn`           | Normal         | Rename symbol.                                              |
| LSP        | `<leader>ca`           | Normal, visual | Run code action.                                            |

## Language Support

| Language | LSP / Tooling                                                                      |
| -------- | ---------------------------------------------------------------------------------- |
| C/C++    | `clangd` with background indexing, clang-tidy, and detailed completion.            |
| Go       | `gopls` with gofumpt, staticcheck, shadow analysis, and unused-parameter analysis. |
| Java     | `nvim-jdtls` with one workspace directory per project.                             |
| Python   | `pyright`.                                                                         |
| Rust     | `rust-analyzer` with all Cargo features and `clippy` checks.                       |
