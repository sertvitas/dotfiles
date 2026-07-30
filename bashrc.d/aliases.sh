#!/usr/bin/env bash
# shellcheck disable=SC2148
alias do_prune_everything='docker system prune -a'

# alias fzcod='code -n $(find ~ -maxdepth 1 -type d 2>/dev/null | fzf)'
# alias fzcof='code -n $(find . -type f 2>/dev/null  | fzf)'
# alias fzged='gedit $(find ~ -maxdepth 1 -type d 2>/dev/null | fzf)'
# alias fzgef='gedit $(find . -type f 2>/dev/null  | fzf)'

alias cdh='cd $(find ~ -maxdepth 1 -type d | fzf)'
alias cdp='cd $(find ~/projects -maxdepth 2 -type d | fzf)'
alias vim='nvim'
#alias aws_imprivata-sandbox='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_imprivata-sandbox.sh.gpg)"'
alias aws_i-platform-dev='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_i-platform-dev.sh.gpg)"'
alias aws_cortext-ng='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_cortext-ng.sh.gpg)"'
alias aws_imprivata-natemarks='eval "$(gpg --decrypt --recipient npmarks@gmail.com ~/bin/aws_imprivata-natemarks.sh.gpg)"'
# use vscode in current directory
alias vcc='code -n .'
# open project in vscode using fzf
alias vcp='code -n $(find ~/projects -maxdepth 1 -type d | fzf)'
# aws account aliases
alias aws_imprivata-sandbox='export AWS_PROFILE=imprivata-sandbox && aws sso login --sso-session imprivata'
alias aws_imprivata-it='export AWS_PROFILE=imprivata-it && aws sso login --sso-session imprivata'
alias aws_platform-dev='export AWS_PROFILE=platform-dev && aws sso login --sso-session imprivata'
alias aws_production='export AWS_PROFILE=production && aws sso login --sso-session imprivata'
alias aws_techpub_production='export AWS_PROFILE=tech-pubs-sso && aws sso login --sso-session imprivata'
alias aws_np-control='export AWS_PROFILE=np-control && aws sso login --sso-session imprivata'
alias aws_whoami='aws sts get-caller-identity'
alias aws_beta_claude='export AWS_PROFILE=beta-claude-code && aws sso login --sso-session imprivata'
alias aws_beta_claude_power='export AWS_PROFILE=beta-claude-power && aws sso login --sso-session imprivata'
alias aws_claude='export AWS_PROFILE=claude-code && aws sso login --sso-session imprivata'
alias aws_claude_admin='export AWS_PROFILE=claude-admin && aws sso login --sso-session imprivata'
alias aws_claude_power='export AWS_PROFILE=claude-power && aws sso login --sso-session imprivata'
alias aws_standard_claude='export AWS_PROFILE=claude-standard && aws sso login --sso-session imprivata'
alias pact='. ./.venv/bin/activate'
alias pad='deactivate'
alias ts_down='tailscale down'
alias ts_up='tailscale up  --exit-node=100.84.119.96 --accept-routes --report-posture'
