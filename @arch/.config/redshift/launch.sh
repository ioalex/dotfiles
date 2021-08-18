#!/usr/bin/env bash
# shellcheck shell=bash

APP_NAME=redshift

# Terminate already running bar instances
killall -q $APP_NAME

# Wait until the processes have been shut down
while pgrep -u $UID -x $APP_NAME >/dev/null; do sleep 1; done

# Launch redshift
$APP_NAME & disown
