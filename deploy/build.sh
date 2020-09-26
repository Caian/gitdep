#!/bin/bash

set -euo pipefail

build() {
    what=$1
    pbin=python$what
    bdir=$pbin
    rm -rf $bdir
    mkdir -p $bdir/bin
    cp setup.py$what.py $bdir/setup.py
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

#build 2
build 3
