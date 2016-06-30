#!/bin/bash
npm install $@ && rm -Rf /tmp/npm-* && rm -Rf $HOME/.npm
