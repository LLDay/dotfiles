#!/usr/bin/env bash

UPDATES=$("/usr/bin/checkupdates" 2>/dev/null | wc -l)
if (( UPDATES == 1 )); then
    echo "$UPDATES update"
elif (( UPDATES > 1 )); then
    echo "$UPDATES updates"
else
    echo ""
fi
