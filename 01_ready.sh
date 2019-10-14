#!/bin/bash
echo "Welcome to the command line-fu challenge dojo"
echo "You will be given some challenges along the way to test how well can you navigate the command line"
echo "Each one will grant you a password to unlock the next challenge"
read -n1 -p "Ready? [y/n]" doit
case $doit in
  y|Y) echo -e "\nLook for a hidden file" ;;
  n|N) echo -e "\nCome back later" ;;
  *)   echo "Options are [y/n]" ;;
esac
