#!/bin/bash

if [ $# -lt 1 ] ; then
        echo "Supply a target file name as argument!"
        exit 1
fi

adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > $1