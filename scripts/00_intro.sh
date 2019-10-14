#!/bin/bash

echo "Congrats! You ran your first bash script."

echo "Run the next script to begin..."

newFile="scripts/01_ready.sh"
touch newFile


echo "#!/bin/bash" >> $newFile
echo 'echo "Welcome to the command line-fu challenge dojo"' >> $newFile
echo 'echo "You will be given some challenges along the way to test how well can you navigate the command line"' >> $newFile
echo 'echo "Each one will grant you a password to unlock the next challenge"' >> $newFile

echo 'read -n1 -p "Ready? [y/n]" doit' >> $newFile
echo 'case $doit in' >> $newFile
echo '  y|Y) echo -e "\nLook for a hidden file" ;;' >> $newFile
echo '  n|N) echo -e "\nCome back later" ;;' >> $newFile
echo '  *)   echo -e "\nOptions are [y/n]" ;;' >> $newFile
echo 'esac' >> $newFile

chmod +x $newFile		