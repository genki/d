#!/bin/sh
while [ "`echo $1 | cut -c1`" = "-" ]; do
  OPT="$OPT $1"
  shift
done
IMG_TAG=`echo $1 | awk -F\@ '{print $1}'`
CMD=`echo $1 | awk -F\@ '{print $2}'`
IMG=`echo $IMG_TAG | awk -F: '{print $1}'`
TAG=`echo $IMG_TAG | awk -F: '{print $2}'`
if [ -z "$CMD" ]; then
  CMD=`echo $IMG | sed 's/.*\///'`
fi
docker run --rm -it -v$PWD:/mnt -w/mnt --entrypoint $CMD $OPT $IMG_TAG "${@:2}"
