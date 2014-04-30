#!/bin/bash

for each in *; do
    if [ -d "$each" ] && [ -f "$each/GNUmakefile" ]; then
        echo $each
    fi
done

