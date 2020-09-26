#!/bin/bash

set -euo pipefail

build() {
    what=$1
    version=$2
    pbin=python$what
    bdir=$pbin
    rm -rf $bdir
    mkdir -p $bdir/bin
    sed "s;VERSION_GOES_HERE;$version;" setup.py$what.py >$bdir/setup.py
    cp ../bin/* $bdir/bin
    cp ../{README.md,LICENSE} $bdir
    pushd $bdir
    pushd bin
    for i in $(ls -1) ; do
        sed -i "1s;^;#!/usr/bin/env python$what\n\n;" $i
    done
    popd
    $pbin setup.py sdist bdist_wheel
    popd
}

VERSION=0.0.2
#build 2 $VERSION
build 3 $VERSION
