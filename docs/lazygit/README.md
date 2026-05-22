# Lazygit

Managed target: `~/.config/lazygit/config.yml`.

## Key Changes

- Uses Nerd Font v3 icons, the file tree, a compact side panel, and hunk mode in the staging view.
- Enables automatic fetch, refresh, fetch-all, and auto-staging of resolved conflicts.
- Uses `delta` as the side-by-side pager with line numbers and Lazygit edit hyperlinks.
- Uses Zed as the external editor preset.

## Keymap

| Context      | Key | Action                                                                                                                |
| ------------ | --- | --------------------------------------------------------------------------------------------------------------------- |
| Commit files | `f` | Run `git difftool -y <selected-commit> -- <selected-file>` to compare the selected commit file with the working copy. |
