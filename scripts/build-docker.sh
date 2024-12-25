#!/usr/bin/env sh

# Delete file if exists
rm -f syamsudotdev-latest.tar.gz

# Build docker image with Dockerfile.pnpm targetting linux/amd64, tagged with syamsudotdev:latest
docker build --no-cache --progress=plain -f Dockerfile.pnpm --platform=linux/amd64 -t syamsudotdev:latest .

# Save docker image to tar.gz file
docker save syamsudotdev:latest | gzip > syamsudotdev-latest.tar.gz