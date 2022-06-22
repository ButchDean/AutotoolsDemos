#!/usr/bin/bash

autoreconf -i
./configure --enable-with-cygwin
make