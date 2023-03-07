#!/bin/bash

echo "Enumerating packages with available updates..."
sudo apt update > /dev/null
packages=$(apt list --upgradable 2>/dev/null | grep -v "^Listing..." | cut -d/ -f1)

if [[ -z "$packages" ]]; then
  echo "No packages have available updates."
else
  echo "The following packages have available updates:"
  echo "$packages"
fi
