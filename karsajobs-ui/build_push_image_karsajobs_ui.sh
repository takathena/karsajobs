#!/bin/bash
DOCKER_USERNAME="takathena"
IMAGE="ghcr.io/$DOCKER_USERNAME/karsajobs:latest"

echo "Login ke GitHub Container Registry..."
echo $GITHUB_TOKEN | docker login ghcr.io -u $DOCKER_USERNAME --password-stdin

docker build -t $IMAGE .
docker push $IMAGE

echo "✅ Selesai! Backend image berhasil di-push ke GHCR."
