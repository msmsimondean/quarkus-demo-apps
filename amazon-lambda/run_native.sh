#!/usr/bin/env bash

set -e #-x

./gradlew buildNative --docker-build=true
./gradlew buildZip

sam local start-lambda -p 3001
