# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="firefox-developer-edition"

ZSH_THEME="agnoster"

# Add to .zshrc, before this plugin is loaded:
# Use Control-D instead of Escape to switch to NORMAL mode
VIM_MODE_VICMD_KEY='jk'

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-vim-mode
)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
# pokemon-colorscripts --no-title -s -r


### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# # Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh
#

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
eval "$(fzf --zsh)"

alias ld='eza -lf --color=always --icons=always'
alias ll='eza -l --group-directories-first --color=always --icons=always '
alias lt='eza -xT --group-directories-first --color=always --icons=always '
alias ls='eza -x --color=always --icons=always'
alias la='eza -aG --sort=modified --group-directories-first --color=always --icons=always'
alias tree='lt'
alias open='kitty +kitten icat'

