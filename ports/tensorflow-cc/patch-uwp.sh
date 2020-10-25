#!/bin/bash

# set inter-field separator to newline
IFS='
'

for line in `grep -r '#include <windows.h>' ./c ./cc` ; do
    path=`echo $line | cut -d: -f1`
    n_levels=`awk -F/ '{print NF-1}' <<<"$path"`
    if [ $n_levels -ge 1 ] ; then
        prefix=x=`printf '../%.0s' {1..${n_levels}}`
    else
        prefix=''
    fi
    cat $path | sed -E s"/(#include<windows.h>)/#include\"${prefix}uwppatches.h\"\n\\1/" > $path
done
