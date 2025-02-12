#!/bin/sh

for dir in "$(dirname "$0")"/*/; do
    if [ -f "$dir/.env-sample" ]; then
        if [ ! -f "$dir/.env" ]; then
            echo "Copying .env-sample to .env in $dir"
            cp "$dir/.env-sample" "$dir/.env"
        else
            echo "Skipping $dir (.env already exists)"
        fi
    else
        echo "Skipping $dir (no .env-sample file found)"
    fi
done

