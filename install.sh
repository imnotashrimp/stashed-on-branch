#!/bin/bash

pretty_src=https://github.com/imnotashrimp/stashed-on-branch/blob/master/post-checkout
raw_src=https://raw.githubusercontent.com/imnotashrimp/stashed-on-branch/master/post-checkout

cd $(git rev-parse --git-dir) && cd ..
target=$(pwd)/.git/hooks/post-checkout

if [[ -f $target ]] ; then
  echo "There's already a post-checkout hook. Aborting."
  echo "You can manually copy the source script from $pretty_src"
  exit 1
else
  curl -s $raw_src -o $target
  echo Hook installed at $target
fi