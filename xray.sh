#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f8079128-2a21-4ba1-afe1-6c6b48fab745"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

