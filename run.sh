#!/usr/bin/env bash
VERSION="latest"
TESTDIR=atests
SUBTESTDIR=
HOST_TESTDIR=atests
ARGS="--include test"
THREADS="0"
docker run --rm \
           -v $PWD/$HOST_TESTDIR:/$TESTDIR/ \
           -v $PWD/output:/outputs \
           -e ROBOTARGS="$ARGS" \
           -e THREADS=$THREADS \
           -e TESTDIR=$TESTDIR \
           -e SUBTESTDIR=$SUBTESTDIR \
           agubellini/robotframework-docker:$VERSION