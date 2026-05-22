# Git

Managed target: `~/.config/git/config`.

`~/.zshenv` sets `GIT_CONFIG_GLOBAL` to this XDG path so Git uses the managed config as the global configuration file.

## Key Changes

| Area                | Behavior                                                                                         |
| ------------------- | ------------------------------------------------------------------------------------------------ |
| Identity            | Sets the global user name and email.                                                             |
| Repository defaults | Uses `main` for new repositories and verbose commit messages.                                    |
| Sync workflow       | Rebases on pull, auto-stashes before pull, prunes during fetch, and auto-sets upstreams on push. |
| Pager               | Uses `delta` with line numbers and hyperlinks.                                                   |
| Editor              | Uses `nvim` for normal editing and sequence editing.                                             |
| Diff                | Uses the `histogram` algorithm and moved-code coloring.                                          |
| Difftool            | Uses `nvimdiff` without prompting.                                                               |
| Mergetool           | Uses `nvimdiff`, `zdiff3` conflict markers, no prompts, and no merge backup files.               |
| Local overrides     | Includes `~/.config/git/config.local` for machine-specific settings outside chezmoi.             |
