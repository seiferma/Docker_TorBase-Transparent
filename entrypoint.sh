#!/bin/sh

# Test mandatory module for nft definitions to work
lsmod | grep nft_redir > /dev/null
if [ $? -ne 0 ]; then
    echo "ERROR: Could not find mandatory module nft_redir."
    echo "Try running modprobe \"nft_redir\" on your host system."
    exit 1
fi

# Pass everything to the original entrypoint
exec /entrypoint.sh "$@"
