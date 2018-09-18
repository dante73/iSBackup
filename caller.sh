#!/usr/bin/env bash

local_bin_path="$HOME/bin/BackupSystem"

for s in $(ls $local_bin_path/backup_*.sh); do

    . $s;

done
