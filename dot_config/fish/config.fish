if status is-interactive
  set -g fish_greeting

  # Default environments
  set -gx EDITOR nvim
  set -gx VISUAL nvim
  set -gx SHELL fish

  # Alias
  alias lg="lazygit"

  alias ls="eza -h --icons --git"
  alias lt="ls --tree --level=2"

  alias mc="lf -command 'set nopreview' -command 'set ratios 1'"

  # Init
  zoxide init fish | source
  starship init fish | source
  mise activate fish | source
end
