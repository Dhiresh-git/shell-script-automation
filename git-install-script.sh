#!/bin/bash
echo "Script to install git"
echo "Installation started"
if [ "$(uname)" == "Linux" ];
then
    echo "this is linux box,installing git"
    apt-get install git -y
elif [ "$(uname)" == "Darwin" ];
then 
    echo "this is not linux box"
    echo "this is Macos"
    brew istall git
else
    echo "not installing"
fi
