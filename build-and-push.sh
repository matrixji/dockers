#!/bin/sh

repo="$1"
platforms="${2:-linux/amd64,linux/arm64/v8}"
tag="${3:-latest}"


if [ -z "$repo" ] ; then
  echo "Usage: $0 <repo> [tag]"
  exit 1
fi


docker buildx build --push --tag "matrixji/$repo:$tag" --platform "${platforms}" ${repo}
