# shellcheck    shell=dash
if [ "$___X_CMD_PKG___META_VERSION" = "v3.0.1" ];then
    . "$___X_CMD_PKG_METADATA_PATH/.x-cmd/gen_shim_file.sh"
    ___x_cmd_pkg_shim_gen_app asciinema
else
    . "$___X_CMD_PKG_METADATA_PATH/.x-cmd/pip-populate.sh"
    ___x_cmd_pkg___pip_populate asciinema
fi
