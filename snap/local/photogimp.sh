#!/bin/bash
DIR=$SNAP_USER_DATA/.config/GIMP/2.10/
FILE="photogimp"

if [ -e "$DIR$FILE" ] ; then
    echo "gimp"
    $SNAP/usr/bin/gimp $*
else
    echo $FILE
    $SNAP/usr/bin/gimp -i &
    sleep 5
    kill $!
    cp -r $SNAP/config/* $DIR
    $SNAP/usr/bin/gimp $*
fi
