# dotfiles

Personal dotfiles for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## What's included

- **zsh** - Shell config with Oh My Zsh and Powerlevel10k
- **Neovim** - LazyVim-based config with custom plugins and keymaps
- **WezTerm** - Terminal emulator config
- **AeroSpace** - Tiling window manager config
- **SketchyBar** - macOS status bar with custom items and plugins
- **Cursor** - Editor settings, keybindings, and custom UI CSS/JS
- **Claude Code** - Settings and hooks
- **ccstatusline** - Claude Code status line config
- **Git** - Global gitconfig with separate work config, plus an AI-powered `prepare-commit-msg` hook

## Setup

Requires [GNU Stow](https://www.gnu.org/software/stow/):

```bash
brew install stow
```

Symlink everything into `$HOME`:

```bash
./link-home.sh
```

This runs `stow home -t $HOME`, creating symlinks from `~/` to the files in `home/`.

## Structure

```
home/
  .aerospace.toml        # AeroSpace window manager
  .claude/               # Claude Code settings and hooks
  .config/
    ccstatusline/        # Claude Code status line
    nvim/                # Neovim (LazyVim)
    sketchybar/          # SketchyBar status bar
  .gitconfig             # Git config
  .gitconfig-work        # Git config for work repos
  .p10k.zsh              # Powerlevel10k prompt
  .wezterm.lua           # WezTerm terminal
  .zshrc                 # Zsh config
  Library/
    Application Support/
      Cursor/User/       # Cursor editor settings and custom UI
git-hooks/
  prepare-commit-msg     # AI commit message hook
```
