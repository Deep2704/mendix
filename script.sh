#!/bin/bash
set -ux

cd ~
cd ~/docker-mendix-buildpack/downloads ~/docker-mendix-buildpack/build
cd ~/docker-mendix-buildpack
mkdir -p downloads build
cd ~
chmod 774 mendix/App_6.0.0.252a3755.mda
chmod 774 mendix/script.sh
cd mendix
mv App_6.0.0.252a3755.mda application.mpk
cp application.mpk ~/docker-mendix-buildpack/downloads
cd~
cd ~/docker-mendix-buildpack
tests/integrationtest.sh
