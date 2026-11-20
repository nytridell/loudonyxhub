#!/usr/bin/env bash
set -e
TAG="calm-cedar-cosmic-badger"
LIB="airy-corner.a"
URL="https://github.com/nytridell/loudonyxhub/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
