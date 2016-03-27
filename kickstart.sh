#!/bin/bash
if [[ "$NUM_WORKERS" == "" ]] ; then
 export NUM_WORKERS=0
fi

sed -i 's/num_workers: 0/num_workers: '$NUM_WORKERS'/g' config.yaml

exec node server.js
