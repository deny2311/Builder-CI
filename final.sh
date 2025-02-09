#!/bin/bash
cd ~/android/extended

. build/envsetup.sh
export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 100G -F 0
ccache -o compression=true
ccache -z

$lunch
$make -j8
