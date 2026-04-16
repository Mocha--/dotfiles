#!/bin/sh
# Claude Code status line - derived from ~/.bashrc PS1
input=$(cat)
cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd')
git_branch=""
if git_branch_raw=$(GIT_OPTIONAL_LOCKS=0 git -C "$cwd" symbolic-ref --short HEAD 2>/dev/null); then
  git_branch=" (${git_branch_raw})"
fi

# Get model display name
model=$(echo "$input" | jq -r '.model.display_name')

# Get context used percentage
remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')
context_info=""
if [ -n "$remaining" ]; then
  used=$(echo "$remaining" | awk '{printf "%.0f", 100 - $1}')
  context_info=$(printf " [ctx: %s%%]" "$used")
fi

printf "\033[01;32m%s@%s\033[00m:\033[01;34m%s\033[00m%s \033[00;36m[%s]%s\033[00m" "$(whoami)" "$(hostname -s)" "$cwd" "$git_branch" "$model" "$context_info"
