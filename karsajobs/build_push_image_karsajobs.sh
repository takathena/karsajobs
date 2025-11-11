#!/bin/bash
# Build dan push Docker image untuk backend Karsa Jobs

# GANTI 'username-dockerhub' dengan username Docker Hub kamu!
DOCKER_USERNAME="takathena"

# 1. Build image
docker build -t $DOCKER_USERNAME/karsajobs:latest .

# 2. Login ke Docker Hub
echo "Login ke Docker Hub..."
docker login -u $DOCKER_USERNAME

# 3. Push image ke Docker Hub
docker push $DOCKER_USERNAME/karsajobs:latest

echo "✅ Selesai! Backend image berhasil di-push ke Docker Hub."