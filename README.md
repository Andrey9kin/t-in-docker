[![Build Status](https://api.travis-ci.org/Andrey9kin/t-in-docker.svg?branch=master)](https://travis-ci.org/Andrey9kin/t-in-docker)
[![Autobuild](https://img.shields.io/docker/automated/andrey9kin/t-in-docker.svg)](https://hub.docker.com/r/andrey9kin/t-in-docker/)

# CLI for Twitter (https://github.com/sferik/t) in Docker

Now way I'm installing ruby gems locally. Even cli for twitter

Build docker image and then run it using provided script

```
docker build -t t .
./t authorize
```

See full list command at https://github.com/sferik/t
