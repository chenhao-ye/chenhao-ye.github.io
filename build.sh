#!/bin/bash
set -e

if [ ! -f "hugo_extended_0.119.0/hugo" ]; then
  mkdir -p hugo_extended_0.119.0
  cd hugo_extended_0.119.0
  wget https://github.com/gohugoio/hugo/releases/download/v0.119.0/hugo_extended_0.119.0_darwin-universal.tar.gz
  tar -xvzf hugo_extended_0.119.0_darwin-universal.tar.gz
  cd ..
fi

hugo_extended_0.119.0/hugo -D
