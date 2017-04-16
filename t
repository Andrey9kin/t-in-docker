#!/usr/bin/env sh

[ ! -f ~/.trc ] && touch ~/.trc
chown 1000:1000 ~/.trc
docker run --rm -it -v ~/.trc:/home/t/.trc t:latest $*