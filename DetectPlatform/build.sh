#!/usr/bin/bash

autoreconf -i

os_name="$(uname)"
if test "${os_name#CYGWIN}" != "$os_name"; then
    ./configure --enable-with-cygwin
else
    ./configure
fi

make