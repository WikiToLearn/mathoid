#!/bin/bash
apt-get update && \
 apt-get -yqq install $@ && \
 rm -f /var/cache/apt/archives/*deb && \
 find /var/lib/apt/lists/ -type f -delete && \
 find /var/log/ -type f -delete
