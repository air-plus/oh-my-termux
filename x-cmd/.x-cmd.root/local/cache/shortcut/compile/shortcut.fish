function c
    ___x_cmd_cd $argv
end
function xw
    ___x_cmd ws $argv
end
function xx
    ___x_cmd xx $argv
end
function xd
    ___x_cmd docker $argv
end
function xg
    ___x_cmd git $argv
end
function xwt
    ___x_cmd webtop $argv
end
function i
    ___x_cmd icmd $argv
end
function @
    ___x_cmd chat --sendalias "" $argv
end
function @en
    ___x_cmd writer --sendalias en $argv
end
function @zh
    ___x_cmd writer --sendalias zh $argv
end
function m
    ___x_cmd termux $argv
end
if [ "$___X_CMD_ADVISE_ACTIVATION_ON_NON_POSIX_SHELL" = '1' ]
	complete -c 'c' -f -a '(___x_cmd_advise_run_fish normal c)' ;
	complete -c 'xw' -f -a '(___x_cmd_advise_run_fish normal xw)' ;
	complete -c 'xx' -f -a '(___x_cmd_advise_run_fish normal xx)' ;
	complete -c 'xd' -f -a '(___x_cmd_advise_run_fish normal xd)' ;
	complete -c 'xg' -f -a '(___x_cmd_advise_run_fish normal xg)' ;
	complete -c 'xwt' -f -a '(___x_cmd_advise_run_fish normal xwt)' ;
	complete -c 'i' -f -a '(___x_cmd_advise_run_fish normal i)' ;
	complete -c '@' -f -a '(___x_cmd_advise_run_fish normal @)' ;
	complete -c '@en' -f -a '(___x_cmd_advise_run_fish normal @en)' ;
	complete -c '@zh' -f -a '(___x_cmd_advise_run_fish normal @zh)' ;
	complete -c 'm' -f -a '(___x_cmd_advise_run_fish normal m)' ;
end
