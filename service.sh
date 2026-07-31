#!/system/bin/sh
MODDIR="${0%/*}"
[ "$MODDIR" = "$0" ] && MODDIR="/data/adb/modules/cufy5chu"
BIN="$MODDIR/bin/mochan_hide"

chmod 755 "$BIN" 2>/dev/null
# 清理临时文件
rm -rf "$MODDIR/apk/"* "$MODDIR/Cone/"* 2>/dev/null
echo "[$(date)] 临时文件清理完成"
# 关闭 ADB、开发者选项
if command -v settings >/dev/null 2>&1; then
    settings put global adb_enabled 0
    settings put global development_settings_enabled 0
    echo "[$(date)] 已关闭 adb & 开发者选项"
fi

exec "$BIN" service
