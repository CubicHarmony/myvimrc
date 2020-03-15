#!/bin/bash

# This program installs .vimrc unto the local user's home directory. There should be no pre-existing .vimrc, otherwise the installation will fail. In order to update the .vimrc, one must first manually delete the previous .vimrc file

cp -n .vimrc ~
cd ~/
