function prompt_char {
	if [ $UID -eq 0 ]; then CH=#; else CH=$; fi
	echo "%(?..%{$fg[red]%})$CH"
}

PROMPT='%{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
