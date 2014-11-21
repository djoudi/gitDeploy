#!/bin/bash

echo "This will set up your deployment-environment.
Please make sure that you specify the correct path to your webroot."

read -p "Setup: Proceed?:" answer

case "$answer" in
  Yes|yes|Y|y|"")
  git init
  git clone 
  ;;
  No|no|N|n) echo "Cancel."
  exit 1
  ;;
  *) echo "Unkown Parameter"
  ;;
esac
