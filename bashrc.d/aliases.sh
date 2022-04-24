# shellcheck disable=SC2148
alias do_prune_everything='docker system prune -a'

# alias fzcod='code -n $(find ~ -maxdepth 1 -type d 2>/dev/null | fzf)'
# alias fzcof='code -n $(find . -type f 2>/dev/null  | fzf)'
# alias fzged='gedit $(find ~ -maxdepth 1 -type d 2>/dev/null | fzf)'
# alias fzgef='gedit $(find . -type f 2>/dev/null  | fzf)'

alias cdh='cd $(find ~ -maxdepth 1 -type d | fzf)'
alias cdp='cd $(find ~/projects ~/go/src/github.com -maxdepth 2 -type d | fzf)'
alias vim='nvim'
alias aws_imprivata-sandbox='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_imprivata-sandbox.sh.gpg)"'
alias aws_i-platform-dev='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_i-platform-dev.sh.gpg)"'
alias aws_cortext-ng='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_cortext-ng.sh.gpg)"'
alias aws_imprivata-natemarks='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_imprivata-natemarks.sh.gpg)"'
# use vscode in current directory
alias vcc='code -n .'
# open project in vscode using fzf
alias vcp='code -n $(find ~/projects -maxdepth 1 -type d | fzf)'
