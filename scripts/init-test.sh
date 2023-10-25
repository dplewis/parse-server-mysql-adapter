#!/bin/bash

SERVER_DIR="parse-server"

git submodule update --init --recursive
cp -a test/. "./${SERVER_DIR}/spec"
cd $SERVER_DIR
pwd

if [ ! -d "node_modules" ]; then
  npm ci
fi
