#!/bin/sh
SCRIPT_DIR=$(cd "$(dirname $0)"; pwd)
CMAKE_FILES=$(ls cmake/*.cmake | sort)
for f in ${CMAKE_FILES}; do
  if test -f ${SCRIPT_DIR}/$f; then
    echo "update: $f"
    cp -f ${SCRIPT_DIR}/$f $f
  else
    echo "skip: $f"
  fi
done
