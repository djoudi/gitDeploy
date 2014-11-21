#!/bin/bash

echo "This will set up your deployment-environment.
Please make sure that you specify the correct path to your webroot."

start()

function start() {
  read -p "Setup: Proceed?:" answer
  case "$answer" in
    Yes|yes|Y|y|"")
    git init
    wget https://raw.githubusercontent.com/fwndev/gitDeploy/master/Scripts/post-receive .git/hooks/post-receive
    chmod +x .git/hooks/post-receive
    git config receive.denyCurrentBranch ignore
    echo "Please set up your local repository.."
    exit 1
    ;;
    No|no|N|n) echo "Cancel."
    quit()
    ;;
    *) echo "Unkown Parameter"
    ;;
  esac
}

function quit() {
  exit
}
