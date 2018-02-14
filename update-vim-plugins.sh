#!/bin/sh
CWD=${pwd}
for d in ~/.vim/bundle/*; do
  echo "${d}"
  cd ${d} && git pull
done
cd $CWD
