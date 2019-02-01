#!/bin/bash -e

if [ "$1" = "" ]; then
  echo "Please specify Go compiler version (e.g go1.12beta1)"
  exit 1
fi

GO="$HOME/go/bin/$1"

if [ ! -x "$GO" ]; then
  echo "$GO is not Go compiler"
fi

echo "Use $GO as Go compiler"
rm $HOME/go/bin/go
ln -s $GO $HOME/go/bin/go
