#!/bin/bash
cd $(dirname "$(readlink -f $0)")
docker build -t wikitolearn/mathoid:0.7.1 .
