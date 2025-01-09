#!/bin/bash

DIRECTORY=$1

echo "Checking files from a folder: '$DIRECTORY'..."

cd $DIRECTORY

OUTPUT=$(npm run lint 2>&1)

cd ..

echo "$OUTPUT" | tee -a lint_output.txt
echo "Linter finished with exit code: $?"

if [[ "$OUTPUT" == *"error"* ]]; then
  echo "Linting error in a folder: '$DIRECTORY'."
  exit 1
fi

exit 0