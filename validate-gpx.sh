#!/usr/bin/bash

set -euo pipefail

INFILE=$1

XSD="http://www.topografix.com/GPX/1/1/gpx.xsd"

xmlstarlet validate \
    --err \
    --xsd "$XSD" \
    "$INFILE"
