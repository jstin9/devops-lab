#!/bin/bash

echo "Started setup to download Netdata to your system!"

if curl -sSL https://get.netdata.cloud/kickstart.sh | sh -s -- --disable-telemetry --non-interactive --stable-channel; then

  echo "Netdata installed!"

  LOCAL_IP=$(ip -4 addr show | grep inet | grep -v 127.0.0.1 | head -n 1 | awk '{print $2}'| cut -d'/' -f1)
  echo "You can open it by address: http://${LOCAL_IP}:19999"
else
  echo "Error: Netdata installation failed!"
  exit 1
fi
