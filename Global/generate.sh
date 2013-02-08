#!/bin/bash

echo "# Generated file
# To add entries to global gitignore go to
# $PWD
# and add files files to include to $0

" > ~/.gitignore

for file in Linux vim Eclipse NetBeans SVN CVS
do
  echo "Add ${file}.gitignore"
  echo -e "\n#\n# $file\n#" >> ~/.gitignore
  cat $file.gitignore >> ~/.gitignore
done

git config --global core.excludesfile ~/.gitignore
