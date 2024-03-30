if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    starship init fish | source

    alias ld='eza -lD --color=always --icons=always --group-directories-first'
    alias ll='eza -lh -g --color=always --icons=always'
    alias lt='eza -lT --color=always --icons=always'
    alias ls='eza --color=always --icons=always'
    alias la='eza -a --color=always --icons=always'

    set -g fish_greeting

end
