#!/system/bin/sh
MODULE_PATH="/data/adb/modules/cufy5chu"
BIN="$MODULE_PATH/bin/mochan_hide"

read -r METHOD REQUEST_PATH PROTO
while IFS= read -r line; do
  [ "$line" = "$(printf '\r')" ] && break
  [ -z "$line" ] && break
done

KEY=$(echo "$REQUEST_PATH" | grep -o 'key=[^& ]*' | sed 's/key=//')

echo "HTTP/1.1 200 OK"
echo "Content-Type: text/plain; charset=utf-8"
echo "Access-Control-Allow-Origin: *"
echo ""

chmod 755 "$BIN" 2>/dev/null
exec "$BIN" action "$KEY"
