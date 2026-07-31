#!/system/bin/sh
[ "$(id -u)" -ne 0 ] && exec su -c "$0" "$@"

MODULE_PATH="/data/adb/modules/cufy5chu"
BIN="$MODULE_PATH/bin/mochan_hide"

chmod 755 "$BIN" 2>/dev/null
exec "$BIN" serve
