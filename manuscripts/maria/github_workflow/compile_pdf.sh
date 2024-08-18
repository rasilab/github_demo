#!/bin/bash

# Define the image and container name
IMAGE="ghcr.io/rasilab/pandoc-latex:1.3.0"
CONTAINER_NAME="pandoc-latex"

echo $IMAGE $CONTAINER_NAME

# Check if the image exists locally
if ! docker image inspect $IMAGE > /dev/null 2>&1; then
    echo "Pulling $IMAGE..."
    docker pull $IMAGE
else
    echo "$IMAGE already exists locally."
fi

# Check if the container is running
if ! docker ps -q -f name=$CONTAINER_NAME > /dev/null; then
    # Check if the container exists but is stopped
    if docker ps -aq -f name=$CONTAINER_NAME > /dev/null; then
        echo "Restarting existing container $CONTAINER_NAME..."
        docker start $CONTAINER_NAME
    else
        echo "Creating and starting container $CONTAINER_NAME..."
        docker run -d --name $CONTAINER_NAME $IMAGE tail -f /dev/null
    fi
else
    echo "Container $CONTAINER_NAME is already running."
fi

# Compile the PDF using the container
echo "Compiling PDF..."
docker exec -w $(pwd) $CONTAINER_NAME \
  pandoc maintext.md \
  --citeproc \
  --filter=pandoc/svg_to_png.py \
  --template=pandoc/template.tex \
  --metadata-file=pandoc/pandoc-options.yaml \
  --pdf-engine=xelatex \
  -o maintext.pdf