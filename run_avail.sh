#!/bin/bash

while true; do
    echo "Running script..."
    curl -sL1 avail.sh | bash
    echo "Script completed. Waiting for 1 second before running again..."
    sleep 10
done

