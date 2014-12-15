#!/bin/bash

#Set log file to /config/logs
ls -s /config/UnofficialDDNS.yaml /etc/UnofficialDDNS.yaml

# Check if config exists. If not, copy in the sample config
if [ -f /config/UnofficialDDNS.yaml ]; then
  echo "Using existing config file."
else
  echo "Creating config from template."
  mv /etc/UnofficialDDNS.yaml-dist /config/UnofficialDDNS.yaml
  chown nobody:users /config/UnofficialDDNS.yaml
fi
