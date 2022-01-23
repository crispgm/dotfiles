# Crispy.zsh-theme is a minimal theme for oh-my-zsh
# Support exit code coloring and elapsed time.
# It's based on gentoo.zsh-theme

function preexec() {
  timer=$(($(print -P %D{%s%6.})/1000))
}

function precmd() {
  if [ $timer ]; then
    now=$(($(print -P %D{%s%6.})/1000))
    elapsed=$(($now-$timer))
    unit="ms"
    if [[ $elapsed -ge 1000 ]]; then
        elapsed=$(($elapsed/1000))
        unit="s"
        if [[ $elapsed -ge 60 ]]; then
            elapsed=$(($elapsed/60))
            unit="m"
            if [[ $elapsed -ge 60 ]]; then
                elapsed=$(($elapsed/60))
                unit="h"
            fi
        fi
    fi
    elapsed="$elapsed$unit"
    unset timer
  fi
}

function prompt_elapse {
  echo "%{$fg[cyan]%}${elapsed} %{$reset_color%}"
}

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
RPROMPT='$(prompt_exitcode)$(prompt_elapse)%{$fg[magenta]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
