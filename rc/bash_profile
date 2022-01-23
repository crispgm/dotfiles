export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad

gitPS1() {
    gitps1=$(git branch 2>/dev/null | grep '*') gitps1="${gitps1:+ (${gitps1/#\* /})}"
    echo "$gitps1"
}

export PS1="\033[1;34m\w$(gitPS1) $ \033[0m"
