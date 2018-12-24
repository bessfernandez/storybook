#!/bin/bash -

# run in package directory

PACK_DIR=$1
FILE=$(npm pack | tail -n 1)

echo $PACK_DIR
echo $FILE

mv "$FILE" "$PACK_DIR/${FILE%-[0-9]*\.[0-9]*\.[0-9]*\.tgz}.tgz"
