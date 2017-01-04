#!/usr/bin/env bash

if hash pacman 2>/dev/null; then
  >&2 echo "Detected: pacman. Installing..."
  sudo pacman -S zsh git wget vim cmake base-devel python nodejs npm tmux
else
  >&2 echo "No pacman detected. Deferring..."
  exit 1
fi
