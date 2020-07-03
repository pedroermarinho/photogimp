#!/bin/bash
DIR=$SNAP_USER_DATA/.config/GIMP/2.10/
FILE="photogimp"
echo $FILE

if [ -e "$DIR$FILE" ] ; then
    $SNAP/usr/bin/gimp $* 
else
    $SNAP/usr/bin/gimp -i &
    sleep 5
    kill $!
    cp -r $SNAP/config/* $DIR
    $SNAP/usr/bin/gimp $* 
fi
