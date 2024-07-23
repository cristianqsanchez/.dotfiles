if status is-interactive
  set -g fish_greeting ""
  set -gx EDITOR nvim .

  alias ls="eza --icons"
  alias lt="eza --icons -T --git-ignore --level=2"
  alias cat="bat"
  alias gs="git status"

  bind \cp tmux-sessionizer

  starship init fish | source
  fnm env --use-on-cd | source
end

# pnpm
set -gx PNPM_HOME "/home/cristian/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
