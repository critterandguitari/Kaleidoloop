#!/bin/bash

# start patch
cd /home/root/app/hw/hwtest
pd -nogui -rt -audiobuf 5 -path lib -alsamidi -mididev 1 mother.pd &

