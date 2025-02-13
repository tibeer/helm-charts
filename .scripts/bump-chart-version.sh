#!/usr/bin/env bash

set -euo pipefail

update_type="$1"

for chart_file in $(find . -name Chart.yaml); do

    version=$(grep "^version:" "${chart_file}" | awk '{print $2}')
    if [[ ! $version ]]; then
        echo "No valid version was found"
        exit 1
    fi

    major=$(echo "$version" | cut -d. -f1)
    minor=$(echo "$version" | cut -d. -f2)
    patch=$(echo "$version" | cut -d. -f3)

    if [[ "$update_type" =~ (major|replacement) ]]; then
        major=$(( major + 1 ))
        minor=0
        patch=0
    elif [[ "$update_type" =~ 'minor' ]]; then
        minor=$(( minor + 1 ))
        patch=0
    else
        patch=$(( patch + 1 ))
    fi

    echo "Bumping version from $version to $major.$minor.$patch"
    sed -i "s/^version:.*/version: ${major}.${minor}.${patch}/g" "${chart_file}"
done
