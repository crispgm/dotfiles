# Crispy.zsh-theme is a minimal theme for oh-my-zsh
# Support exit code coloring and elapsed time.
# It's based on gentoo.zsh-theme

autoload -Uz add-zsh-hook

function crispy_preexec() {
  CRISPY_TIMER=$(($(print -P %D{%s%6.}) / 1000))
}

function crispy_precmd() {
  if [[ -n ${CRISPY_TIMER-} ]]; then
    local now=$(($(print -P %D{%s%6.}) / 1000))
    local elapsed=$((now - CRISPY_TIMER))
    local unit="ms"
    if [[ $elapsed -ge 1000 ]]; then
        elapsed=$((elapsed / 1000))
        unit="s"
        if [[ $elapsed -ge 60 ]]; then
            elapsed=$((elapsed / 60))
            unit="m"
            if [[ $elapsed -ge 60 ]]; then
                elapsed=$((elapsed / 60))
                unit="h"
            fi
        fi
    fi
    CRISPY_ELAPSED="$elapsed$unit"
    CRISPY_SHOW_EXIT_CODE=1
    unset CRISPY_TIMER
  else
    unset CRISPY_ELAPSED
    unset CRISPY_SHOW_EXIT_CODE
  fi
}

add-zsh-hook -d preexec crispy_preexec 2>/dev/null
add-zsh-hook -d precmd crispy_precmd 2>/dev/null
add-zsh-hook preexec crispy_preexec
add-zsh-hook precmd crispy_precmd

function crispy_prompt_elapse {
  [[ -n ${CRISPY_ELAPSED-} ]] || return
  echo "%{$fg[cyan]%}${CRISPY_ELAPSED} %{$reset_color%}"
}

function crispy_prompt_char {
  local ch
  if [[ $UID -eq 0 ]]; then ch=#; else ch=$; fi
  echo "%(?..%{$fg[red]%})$ch"
}

function crispy_prompt_exitcode {
  local exit_code=$?
  if [[ -n ${CRISPY_SHOW_EXIT_CODE-} && $exit_code -ne 0 ]]; then
    echo "%{$fg[red]%}($exit_code) "
  fi
}

function crispy_prompt_arch {
  if [ "$ZSH_CRISPY_SHOW_ARCH" != "1" ]; then
    return
  fi
  local mac_arch=$(arch)
  if [ "$mac_arch" = "i386" ]; then
    echo "i "
  elif [ "$mac_arch" = "arm64" ]; then
    echo "a "
  fi
}

PROMPT='%{$fg_bold[blue]%}$(crispy_prompt_arch)%(!.%1~.%~) $(git_prompt_info)$(crispy_prompt_char)%{$reset_color%} '
RPROMPT='$(crispy_prompt_exitcode)$(crispy_prompt_elapse)%{$fg[magenta]%}[%*]%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
