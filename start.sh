#!/bin/sh
mkdir -p /home/username/data
cd ~/semanticturkey-3.0/bin
export JAVA_MIN_MEM=512M
export JAVA_MAX_MEM=4096M
sh st_server_run
