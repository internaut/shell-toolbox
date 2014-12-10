#!/bin/bash

if [ $# -lt 1 ] ; then
        echo "Supply a directory as argument!"
        exit 1
fi

find $1 -name ".svn" -type d -exec rm -rf {} \;
