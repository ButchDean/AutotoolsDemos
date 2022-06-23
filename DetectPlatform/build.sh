#!/usr/bin/bash

build_for_cygwin=false

while getopts "w" opt; do
    case $opt in
        w)
            build_for_cygwin=true
        ;;
    esac
done

autoreconf -i

if [ "$build_for_cygwin" = true ] ; then
    ./configure --enable-with-cygwin
else
    ./configure
fi

make