#!/bin/sh

# exit on error
set -e

# install needed packages
apt-get update && apt-get install -y git mercurial bzr

# download Dave Cheney's (unofficial) ARM build of golang compiler / tools
curl -o go.tar.gz http://dave.cheney.net/paste/go1.4.2.linux-arm~armv5-1.tar.gz

# install golang
tar -C /usr/local -xzf go.tar.gz

# add environment vars for golang
printf "\n" >> $HOME/.bashrc
printf "export PATH=$PATH:/usr/local/go/bin\n" >> $HOME/.bashrc
printf "export GOPATH=$HOME/go\n" >> $HOME/.bashrc
