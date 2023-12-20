#!/bin/bash

read -d '' TO_CHECK
CORRECT=$(base64 -d <<< $1)

echo $CORRECT
echo $TO_CHECK


[[ $TO_CHECK =~ $CORRECT ]] && printf "ok" || printf "invalid"
