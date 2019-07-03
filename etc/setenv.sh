#!/usr/bin/env bash

export APP_NAME=DEVApp

export JAVA_OPTS="$JAVA_OPTS -Dhost.name=$HOSTNAME -Dapp.name=$APP_NAME"