#!/bin/bash

SERVER_DIR="parse-server"
cd $SERVER_DIR
PARSE_SERVER_TEST_DB=mysql npm run testonly
