#!/bin/sh
# https://www.samba.org/samba/docs/man/manpages-3/smb.conf.5.html

# set this in the environment or here.
# prevent timemachine from filling up the entire disk by giving it a smaller upper limit
TIMEMACHINE_MAX_VOL_SIZE_GB="${TIMEMACHINE_MAX_VOL_SIZE_GB:-750}"

blocksize=1  # use 1 byte blocks instead of 1024 (default) so we don't have to convert values
max=$((TIMEMACHINE_MAX_VOL_SIZE_GB * 1024*1024*1024))
used=$(du -s -B${blocksize} "/timemachine" | awk '{print $1}')
available=$((max - used))

echo "${max} ${available} ${blocksize}"
