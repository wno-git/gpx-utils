#!/usr/bin/env bash

set -euo pipefail

INFILE=$1

DIR=$(dirname "$(readlink -f "$0")")

xmlstarlet transform \
    --val \
    --net \
    "$DIR/sanitize.xslt" \
    "$INFILE"
