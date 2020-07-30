#!/bin/sh

set -x

SOURCE_DIR=`pwd`
# ${param:-default}
# 表示param不存在时，返回default
BUILD_DIR=${BUILD_DIR:-../build}
BUILD_TYPE=${BUILD_TYPE:-Debug}

# 创建目录指定编译类型（debug or release），生成工程，进行编译
mkdir -p $BUILD_DIR/$BUILD_TYPE \
    && cd $BUILD_DIR/$BUILD_TYPE \
    && cmake \
            -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
            $SOURCE_DIR \
    && make $*