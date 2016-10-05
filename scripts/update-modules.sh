#!/bin/bash

# Workaround until https://github.com/uber-go/sally/pull/15 is deployed

name="$1"
repo="$2"

if [[ -z "$repo" ]]; then
	echo "USAGE: $0 NAME REPO"
	exit 1
fi

set -e

workdir=$(mktemp -d)
trap "rm -rf '$workdir'" EXIT

files=$(mktemp)
git clone "https://$repo" "$workdir"
(
	cd "$workdir"
	find . -name .git -prune -o -type d -print
) | while read -r package; do
	mkdir -p "docs/$name/$package"
	cp "docs/$name.html" "docs/$name/$package/index.html"
	echo "docs/$name/$package/index.html" >> "$files"
done

git add $(cat "$files")
