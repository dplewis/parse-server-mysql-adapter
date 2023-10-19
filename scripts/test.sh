#!/bin/bash

SERVER_DIR="parse-server"

cp helper.js "./${SERVER_DIR}/spec"
cp skippedTests.json "./${SERVER_DIR}/spec"
cd $SERVER_DIR
pwd

if [ ! -d "node_modules" ]; then
  npm install
fi

npm run pretest
PARSE_SERVER_TEST_DB=mysql npm run coverage
