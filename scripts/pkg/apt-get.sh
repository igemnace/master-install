#!/usr/bin/env bash

if hash apt-get 2>/dev/null; then
  >&2 echo "Detected: apt-get. Installing..."
  sudo apt-get install zsh git wget vim cmake python-dev nodejs npm tmux
else
  >&2 echo "No apt-get detected. Deferring..."
  exit 1
fi
