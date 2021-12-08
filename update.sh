#!/bin/sh
SCRIPT_DIR=$(cd "$(dirname $0)"; pwd)
CMAKE_FILES=$(ls *.cmake | sort)
for f in ${CMAKE_FILES}; do
  if test -f ${SCRIPT_DIR}/cmake/$f; then
    echo "update: $f"
    cp -f ${SCRIPT_DIR}/cmake/$f $f
  else
    echo "skip: $f"
  fi
done
