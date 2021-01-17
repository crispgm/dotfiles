# Crispy.zsh-theme is a minimal theme for oh-my-zsh
# Support exit code coloring and timestamp.
# It's based on gentoo.zsh-theme

function prompt_char {
    if [ $UID -eq 0 ]; then CH=#; else CH=$; fi
    echo "%(?..%{$fg[red]%})$CH"
}

function prompt_exitcode {
    if [ $? -ne 0 ]; then
        echo "%{$fg[red]%}(%?) "
    fi
}

function prompt_arch {
    if [ "$ZSH_CRISPY_SHOW_ARCH" != "1" ]; then
        return
    fi
    MAC_ARCH=`arch`
    if [ "$MAC_ARCH" = "i386" ]; then
        echo "i "
    elif [ "$MAC_ARCH" = "arm64" ]; then
        echo "a "
    fi
}

PROMPT='%{$fg_bold[blue]%}$(prompt_arch)%(!.%1~.%~) $(git_prompt_info)$(prompt_char)%{$reset_color%} '
RPROMPT='$(prompt_exitcode)%{$fg[magenta]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
