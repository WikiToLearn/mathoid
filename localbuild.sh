#!/bin/bash
cd $(dirname "$(readlink -f $0)")
docker build -t wikitolearn/mathoid:$(cat new_docker_image_version) .
