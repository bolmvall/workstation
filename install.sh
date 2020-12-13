#!/bin/bash
set -e

REPO_NAME="workstation"

REPO_PATH="$HOME/$REPO_NAME"

DEST_PATH="$HOME/.$REPO_NAME"

# Check pre-conditions
# - i3 ?
# - packages used in scripts

# Uninstall 
if [ -d $DEST_PATH ] 
then
	rm -r $DEST_PATH
fi


# Install procedure
if [ ! -d $DEST_PATH ] 
then
	mkdir $DEST_PATH
fi

cp -r $REPO_PATH/* $DEST_PATH
cp -i $DEST_PATH/i3/config $HOME/.config/i3/
cp -i $DEST_PATH/i3status/config $HOME/.config/i3status/


