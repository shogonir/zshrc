alias ll='ls -l'

# about cd
setopt auto_cd
alias ...='../..'
alias ....='../../..'

# display
PROMPT='
%d
%n@%m $ '

# pushd
setopt auto_pushd
setopt pushd_ignore_dups

# zstyle ':completion:*:default' menu select=1

# cdコマンド実行後、lsを実行する
function cd() {
  builtin cd $@ && ll;
}
