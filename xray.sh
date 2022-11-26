#!/bin/sh
if [ ! -f UUID ]; then
  UUID="291361d8-8085-4b3e-9df2-3e53796b2566"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

