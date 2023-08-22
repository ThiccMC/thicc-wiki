#!/bin/sh

ncat $SYNC_LISTENER|sh -c "while read; do ${CMD:-"git pull"};done </dev/stdin;end"
