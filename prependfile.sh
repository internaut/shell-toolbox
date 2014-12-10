#!/usr/local/bin/bash
#
# bash 4.x required!
#

if [ $# -lt 3 ] ; then
	echo "usage: prependfile.sh <file suffix1,suffix2...> <prepend file> <directory>"
	exit 1;
fi

prefile=$2
dir=$3
suffixes=`echo $1 | tr ',' '|'`

echo "Prepending file $prefile to files in $dir with suffixes $suffixes..." 

numlines=`cat "$prefile" | wc -l`

# this requires bash 4.x:
shopt -s globstar nullglob extglob

for f in $dir/**/*.@($suffixes) ;do
  if [[ -f $f ]] ; then
    # check if prepend file was already added to this file
    head -n $numlines $f | diff -q - $prefile > /dev/null
    
    if [[ $? -eq 1 ]] ; then
        # if not, prepend it
        cat "$prefile" "$f" > "$f.tmp"
        mv "$f.tmp" "$f"
        echo "> prepend done for $f"
    else
        echo "> prepend omitted for $f"
    fi
  fi
done

