#!/bin/bash
REPOSITORY_NAME="cooopeir"

# Function to build, tag, and push Docker images
build_tag_push() {
    local folder=$1
    local image_name=$2
    local image_tag=$3

    # Change directory to the folder containing the Dockerfile
    cd "$folder" || exit

    # Build the Docker image
    docker build -t "$image_name:$image_tag" .

    # Tag the Docker image
    docker tag "$image_name:$image_tag" "$REPOSITORY_NAME/$image_name:$image_tag"

    # Push the Docker image to the repository
    docker push "$REPOSITORY_NAME/$image_name:$image_tag"

    # Change back to the original directory
    cd - || exit
}

# Call the function for each folder and image
build_tag_push "backend" "conint" "dev"
build_tag_push "frontend" "conint_frontend" "dev"
build_tag_push "mariadb" "conint_db" "dev"