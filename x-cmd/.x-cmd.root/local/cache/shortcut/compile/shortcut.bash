function c() { ___x_cmd cd "$@"; }
function xw() { ___x_cmd ws "$@"; }
function xx() { ___x_cmd xx "$@"; }
function xd() { ___x_cmd docker "$@"; }
function xg() { ___x_cmd git "$@"; }
function xwt() { ___x_cmd webtop "$@"; }
function i() { ___x_cmd icmd "$@"; }
function @() { ___x_cmd chat --sendalias "" "$@"; }
function @en() { ___x_cmd writer --sendalias en "$@"; }
function @zh() { ___x_cmd writer --sendalias zh "$@"; }
function m() { ___x_cmd termux "$@"; }
if ___x_cmd_is_suitable_advise_repl 2>/dev/null 1>&2; then
	xrc:mod:lib advise env
	[ ! -f "$___X_CMD_ROOT_ADV/cd/advise.jso" ] || ___x_cmd advise init c "$___X_CMD_ROOT_ADV/cd/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/ws/advise.jso" ] || ___x_cmd advise init xw "$___X_CMD_ROOT_ADV/ws/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/xx/advise.jso" ] || ___x_cmd advise init xx "$___X_CMD_ROOT_ADV/xx/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/docker/advise.jso" ] || ___x_cmd advise init xd "$___X_CMD_ROOT_ADV/docker/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/git/advise.jso" ] || ___x_cmd advise init xg "$___X_CMD_ROOT_ADV/git/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/webtop/advise.jso" ] || ___x_cmd advise init xwt "$___X_CMD_ROOT_ADV/webtop/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/icmd/advise.jso" ] || ___x_cmd advise init i "$___X_CMD_ROOT_ADV/icmd/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/chat/data/exec.jso" ] || ___x_cmd advise init @ "$___X_CMD_ROOT_ADV/chat/data/exec.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/writer/advise.jso" ] || ___x_cmd advise init @en "$___X_CMD_ROOT_ADV/writer/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/writer/advise.jso" ] || ___x_cmd advise init @zh "$___X_CMD_ROOT_ADV/writer/advise.jso" ;
	[ ! -f "$___X_CMD_ROOT_ADV/termux/advise.jso" ] || ___x_cmd advise init m "$___X_CMD_ROOT_ADV/termux/advise.jso" ;
fi
