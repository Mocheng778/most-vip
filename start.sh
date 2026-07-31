#!/system/bin/sh
if [ "$(id -u)" -ne 0 ]; then
    exec su -c "$0" "$@"
    exit 1
fi

MODULE_PATH="/data/adb/modules/cufy5chu"
BIN="$MODULE_PATH/bin/mochan_hide"

chmod 755 "$BIN" 2>/dev/null
exec "$BIN" start
