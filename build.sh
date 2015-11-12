#!/bin/bash

docker build -t terraform-provider-static .
docker run -it --rm --name terraform-provider-static -v "$PWD":/usr/src/myapp -w /usr/src/myapp terraform-provider-static go build -o terraform-provider-static *.go