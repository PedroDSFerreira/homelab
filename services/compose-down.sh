#!/bin/sh

for dir in "$(dirname "$0")"/*/; do
    # Find the docker-compose file
    if [[ -f "$dir/docker-compose.yml" || -f "$dir/docker-compose.yaml" ]]; then
        echo "Shuttind down $dir"
        (cd "$dir" && docker compose down)
    else
        echo "Skipping $dir (no docker-compose file found)"
    fi
done

