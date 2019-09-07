#!/bin/bash
DIR=$SNAP_USER_DATA/.config/GIMP/2.10/
FILE="photogimp-teste"
# ech$SNAP_USER_DATA
# echo "o "SNAP_USER_DATA"
# echo SNAP"
# echo $SNAP
#/home/zyga/snap/hello-world/27

if [ -e "$DIR$FILE" ] ; then
#     echo "o arquivo photogimp-teste existe"
    $SNAP/usr/bin/gimp
else
#     echo "o arquivo photogimp-teste não existe"
    mkdir -p $SNAP_USER_DATA/.config/GIMP/2.10
    tar xfv $SNAP/photogimp.tar -C "$DIR"
    $SNAP/usr/bin/gimp
fi
