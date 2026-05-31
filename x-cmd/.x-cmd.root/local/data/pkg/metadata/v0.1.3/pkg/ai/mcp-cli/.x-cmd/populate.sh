# shellcheck    shell=dash

. "$___X_CMD_PKG_METADATA_PATH/.x-cmd/npm-populate.sh"

___x_cmd_pkg___npm_populate_install(){
    local pkg_install_url=""

    if ___x_cmd websrc is cn; then
        pkg_install_url="https://codeberg.org/x-cmd-sourcecode/mcp-cli/archive"
    else
        pkg_install_url="https://github.com/x-cmd-sourcecode/mcp-cli/archive/refs/tags"
    fi

    npm install                                          \
        --prefix "$___X_CMD_PKG___META_TGT"              \
        "$pkg_install_url/${___X_CMD_PKG___META_VERSION}.tar.gz"                               \
    || return 1

}

___x_cmd_pkg___npm_gen_shim_bin(){
    [ "$#" -ge 1 ] || return 1

    local node_mod_path=; local x_treename=; local runtime_bin_path=

    ___x_cmd_pkg_treename_ node "$___X_CMD_PKG_RUNTIME_NODE_VERSION" "$___X_CMD_PKG___META_OS/$___X_CMD_PKG___META_ARCH" || return
    runtime_bin_path="$___X_CMD_PKG_ROOT_SPHERE/$___X_CMD_PKG___META_SPHERE_NAME/$x_treename/node/$___X_CMD_PKG_RUNTIME_NODE_VERSION/bin" #TODO: shims
    node_mod_path="$___X_CMD_PKG___META_TGT/node_modules"

    local binpath=; local line=; local dep_name=; local dep_version=; local dep_binpath=
    while read -r line; do
        [ -n "$line" ] || continue
        dep_name="${line%%=*}"
        dep_version="${line#*=}"
        [ "$dep_name" != "node" ] || continue
        x_treename=; ___x_cmd_pkg_treename_ "$dep_name" "$dep_version" "${___X_CMD_PKG___META_OS}/${___X_CMD_PKG___META_ARCH}" || return
        dep_binpath="$(___x_cmd_pkg___list "$dep_name" "$dep_version" "${___X_CMD_PKG___META_OS}/${___X_CMD_PKG___META_ARCH}" path.bin)" || return
        [ -n "$dep_binpath" ] || continue
        dep_binpath="$___X_CMD_PKG_ROOT_SPHERE/$___X_CMD_PKG___META_SPHERE_NAME/$x_treename/$dep_name/$dep_version/$dep_binpath"
        binpath="${binpath}:${dep_binpath}"
    done <<A
$( ___x_cmd_pkg___list "${___X_CMD_PKG___META_NAME}" "${___X_CMD_PKG___META_VERSION}" "${___X_CMD_PKG___META_OS}/${___X_CMD_PKG___META_ARCH}" dep )
A

    if [ "$___X_CMD_PKG___META_OS" = "win" ]; then
        runtime_bin_path="$___X_CMD_PKG_ROOT_SPHERE/$___X_CMD_PKG___META_SPHERE_NAME/$x_treename/node/$___X_CMD_PKG_RUNTIME_NODE_VERSION"
        ___x_cmd_pkg_shim_gen                               \
            --mode app                                      \
            --code bat                                      \
            --var "NODE_PATH=${node_mod_path};\$NODE_PATH"  \
            --var "PATH=${binpath}:$runtime_bin_path:\$PATH"           \
            --bin_dir "node_modules/.bin"                   \
            --bin_file "$@"                                 \
        || return
    fi

    ___x_cmd_pkg_shim_gen                                   \
        --mode app                                          \
        --code sh                                           \
        --var "NODE_PATH=${node_mod_path}:\$NODE_PATH"      \
        --var "PATH=${binpath}:$runtime_bin_path:\$PATH"               \
        --bin_dir "node_modules/.bin"                       \
        --bin_file "$@"                                     \
    || return

}

___x_cmd_pkg___npm_populate mcp-cli


