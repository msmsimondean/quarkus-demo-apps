#!/usr/bin/env bash

set -e #-x

rm build/*-runner || true
./gradlew quarkusBuild
./gradlew buildZip

sam local start-lambda -p 3001
