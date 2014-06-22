#!/bin/sh
for i in */; do
  if [ "$i" != ".git" ] && [ "$i" != ".gitignore" ]; then
    stow -v $i
  fi
done
