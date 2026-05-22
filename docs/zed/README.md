# Zed

Managed targets:

- `~/.config/zed/keymap.json`
- `~/.config/zed/tasks.json`

## Key Changes

- Aligns Zed Vim-mode navigation and editing shortcuts with the Neovim configuration.
- Adds centered terminal tasks for Lazygit, Claude Code, Codex, and OpenCode.
- Removes several default shortcuts that conflict with the custom editor and agent workflow.

## Keymap

| Context                  | Key               | Action                                     |
| ------------------------ | ----------------- | ------------------------------------------ |
| Editor normal / visual   | `Shift+s`         | Save.                                      |
| Editor normal / visual   | `;`               | Send `:`.                                  |
| Editor normal / visual   | `o`               | Open a new line and return to normal mode. |
| Editor normal / visual   | `Ctrl+h/j/k/l`    | Move five columns or lines.                |
| Editor normal / visual   | `Space+Enter`     | Dismiss buffer search.                     |
| Editor normal / visual   | `Ctrl+Shift+k/j`  | Move the current line up or down.          |
| Editor normal / visual   | `Shift+y`         | Yank to the system clipboard register.     |
| Editor normal / visual   | `Shift+p`         | Paste from the system clipboard register.  |
| Editor normal / visual   | `Space+d`         | Delete into the black-hole register.       |
| Editor normal / visual   | `Space+h/j/k/l`   | Activate pane left, down, up, or right.    |
| Editor normal / visual   | `s+h/j/k/l`       | Split pane left, down, up, or right.       |
| Editor normal / visual   | `Space+o`         | Join all panes.                            |
| Editor / terminal / pane | `Alt+Cmd+[`       | Activate previous pane item.               |
| Editor / terminal / pane | `Alt+Cmd+]`       | Activate next pane item.                   |
| Project panel            | `Ctrl+j/k`        | Move five items down or up.                |
| Project panel            | `a`               | Create a file.                             |
| Project panel            | `A`               | Create a directory.                        |
| Project panel            | `r`               | Rename.                                    |
| Project panel            | `d`               | Delete.                                    |
| Project panel            | `Shift+t`         | Open in terminal.                          |
| Editor non-insert        | `Space+c f`       | Format.                                    |
| Editor non-insert        | `Cmd+Shift+Enter` | Add selection to the agent thread.         |
| Workspace                | `Cmd+;`           | Toggle agent focus.                        |
| Workspace                | `Ctrl+~`          | Open a centered terminal.                  |
| Workspace non-insert     | `Space+g g`       | Spawn Lazygit.                             |
| Workspace non-insert     | `Space+g c`       | Spawn Claude Code.                         |
| Workspace non-insert     | `Space+g x`       | Spawn Codex.                               |
| Workspace non-insert     | `Space+g o`       | Spawn OpenCode.                            |

## Removed Defaults

| Context          | Key               | Removed Action       |
| ---------------- | ----------------- | -------------------- |
| Global           | `Alt+Cmd+h`       | Hide other apps.     |
| Workspace        | `Cmd+?`           | Toggle agent focus.  |
| Editor           | `Cmd+;`           | Toggle line numbers. |
| Editor full mode | `Cmd+Shift+Enter` | Newline above.       |
| Workspace        | `Ctrl+~`          | New terminal.        |

## Task Changes

| Task                 | Command                         | Behavior                                                 |
| -------------------- | ------------------------------- | -------------------------------------------------------- |
| `start lazygit`      | `lazygit -p $ZED_WORKTREE_ROOT` | Opens Lazygit for the active worktree.                   |
| `Agent: Claude Code` | `claude`                        | Runs in `$ZED_WORKTREE_ROOT` and allows concurrent runs. |
| `Agent: Codex`       | `codex`                         | Runs in `$ZED_WORKTREE_ROOT` and allows concurrent runs. |
| `Agent: OpenCode`    | `opencode`                      | Runs in `$ZED_WORKTREE_ROOT` and allows concurrent runs. |
