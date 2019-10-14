#!/bin/bash

echo ""
echo "hiding"
echo "Challenge: find the needle in the haystack"


newFile="03_hay.sh"
touch newFile


repeat=1000
mkdir -p ../02_hiding
for i in `seq $repeat`; do
	touch ../02_hiding/$i.txt
	if [ $i -eq 723 ]
	then
	    echo "eldeen" >> ../02_hiding/$i.txt
	fi
done 


echo '#!/bin/bash' >> $newFile
echo 'echo "Have you found the needle?"' >> $newFile
echo 'echo "1000 files were created in the newly created folder"' >> $newFile
echo 'echo "999 of them are empty...Can you find which file isnt?"' >> $newFile

echo 'echo "Enter the key:"' >> $newFile
echo 'read name' >> $newFile

echo 'if [ $name == "eldeen" ]' >> $newFile
echo 'then' >> $newFile
echo '	echo "found it"' >> $newFile
echo '	echo `rm -r 02_hiding`' >> $newFile
echo 'else' >> $newFile
echo '	echo "keep looking"' >> $newFile
echo 'fi' >> $newFile



chmod +x $newFile	