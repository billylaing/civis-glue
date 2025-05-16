#!/usr/bin/env just --justfile

# set quiet

# list available recipes
default:
  just --choose

build:
  docker build -t blaing/civis-glue:1.0.0 .

release: build
  docker push blaing/civis-glue:1.0.0

shell:
  docker run -it --rm \
      -v ~/.aws:/root/.aws \
      -e AWS_PROFILE=$AWS_PROFILE \
      --name civis-glue-pyspark \
      blaing/civis-glue:1.0.0 \
      /bin/bash
