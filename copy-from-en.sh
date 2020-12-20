#!/bin/bash

set -Eeu -o pipefail

ROOT_DIR=$(pwd)

if [[ $1 == content/en/* ]]; then
    SOURCE_PAGE=$(echo "$1" | cut -c 11-)
else
    SOURCE_PAGE=$1
fi

SOURCE_PATH="$ROOT_DIR/content/en/$SOURCE_PAGE"

if [ ! -f "$SOURCE_PATH" ]; then
    echo "Source file not found $SOURCE_PATH, aborting."
    exit 1
fi

LANGUAGES=( "de" "es" "fr" "hu" "pt_br" "pt_pt" "ru" )

for LANG in "${LANGUAGES[@]}"
do
    TARGET_PATH="$ROOT_DIR/content/$LANG/$SOURCE_PAGE"
    cp -v "$SOURCE_PATH" "$TARGET_PATH"
done
