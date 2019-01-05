## What is this

Dockerfile to use redpen cli on aline container.

## How to use

```shell
$ docker build . -t redpen-alpine
$ docker container run -it --rm -v ~/path/to/host/documents:/usr/local/documents:ro redpen-alpine:latest target_document.txt
```
