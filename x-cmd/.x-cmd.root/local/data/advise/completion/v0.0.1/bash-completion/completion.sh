# shellcheck shell=sh disable=SC1090,SC1091,SC2166,SC2268,SC3028,SC3044,SC3054,SC2034
# Check for interactive bash and that we haven't already been sourced.
if [ "x${BASH_VERSION-}" != x -a "x${PS1-}" != x -a "x${BASH_COMPLETION_VERSINFO-}" = x ]; then

    # Check for recent enough version of bash.
    if [ "${BASH_VERSINFO[0]}" -gt 4 ] ||
        [ "${BASH_VERSINFO[0]}" -eq 4 -a "${BASH_VERSINFO[1]}" -ge 2 ]; then
        [ -r "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion" ] &&
            . "${XDG_CONFIG_HOME:-$HOME/.config}/bash_completion"
        if shopt -q progcomp; then
            if [ -r "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/lazyload.sh" ]; then
                # Source completion lazy loading code
                . "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/lazyload.sh"
            elif [ -d "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER" ] && [ -r "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/bash_completion" ] && command -v complete >/dev/null 2>&1; then
                # Generate completion lazy loading code
                (
                    complete -r
                    . "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/bash_completion"
                    complete
                ) | data='
___x_cmd_advise_man_completer___bash_source_code(){
    # Source completion code.
    [ -r "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/bash_completion" ] || return
    . "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/bash_completion" 2>/dev/null 1>&2
}

___x_cmd_advise_man_completer___bash_lazyload(){
    ___x_cmd_advise_man_completer___bash_source_code || complete -r "${COMP_WORDS[0]}";
}
' command awk '
BEGIN{ str = ENVIRON["data"]; }
((NR % 50) == 1){ str = str "\ncomplete -F ___x_cmd_advise_man_completer___bash_lazyload"; }
{ str = str " " $NF; }
END{ print str; }
' > "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/lazyload.sh"
                . "$___X_CMD_ADVISE_MAN_COMPLETIONS_FOLDER/lazyload.sh"
            fi
        fi
    fi

fi
