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

PROMPT='%{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)$(prompt_char)%{$reset_color%} '
RPROMPT='$(prompt_exitcode)%{$fg[magenta]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
