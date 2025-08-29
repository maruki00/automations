#!/usr/bin/bash

objdump -d $1 | grep '[0-9a-f]:' | grep -oP '\s\K([0-9a-f]{2})(?=\s|$)' | tr -d '\n' | sed 's/../\\x&/g'
