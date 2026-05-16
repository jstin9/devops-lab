#!/bin/bash

echo "Started uninstall script to remove Netdata from your system!"
if curl -sSL https://get.netdata.cloud/kickstart.sh | sh -s -- --non-interactive  --uninstall; then
  echo "Netdata successfully deleted from your system!"
else
  echo "Error: Netdata uninstall script failed!"
  exit 1
fi
