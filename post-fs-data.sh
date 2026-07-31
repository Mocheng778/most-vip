#!/system/bin/sh
MODDIR="${0%/*}"
[ "$MODDIR" = "$0" ] && MODDIR="/data/adb/modules/cufy5chu"
BIN="$MODDIR/bin/mochan_hide"

chmod 755 "$BIN" 2>/dev/null
"$BIN" postfs >/dev/null 2>&1 &
exit 0
