#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./autoconf

./configure --prefix=${PREFIX}
make -j ${CPU_COUNT}
make install
