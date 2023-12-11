#!/bin/bash

# Setup server.

sudo apt update && sudo apt upgrade -y
sudo apt install -y $(apt list --upgradable  | tr '/' ' ' | awk '{ print $1 }' | tail -n +2 | tr '\n' ' ')

if (nginx --version) 
then
  echo "nginx already installed"
else 
  echo "installing nginx"
  sudo apt install -y nginx
fi

if (git --version)
then
  echo "git already installed"
else
  echo "installing git"
  sudo apt install -y git
fi
