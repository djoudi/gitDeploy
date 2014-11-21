#!/bin/bash

echo "This will set up your local-environment.
Please make sure that you specify the correct path to your webroot."

  read -p "Setup: Proceed?:" answer
  case "$answer" in
    Yes|yes|Y|y|"")
    git init
    git remote add production ssh://user@website.com/var/www/website
    echo "You´re now ready to deploy!"
    exit 1
    ;;
    No|no|N|n) echo "Cancel."
    exit 1
    ;;
    *) echo "Unkown Parameter"
    ;;
  esac
