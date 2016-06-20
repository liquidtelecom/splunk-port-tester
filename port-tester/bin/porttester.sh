#!/bin/bash

hostname=$1
port=$2

if (echo > /dev/tcp/$hostname/$port) > /dev/null 2>&1 ; then
    echo target=$hostname port=$port status=open
else
    echo target=$hostname port=$port status=closed
fi
