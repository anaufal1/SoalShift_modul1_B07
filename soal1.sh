#!/ bin/bash/

for file in "nature/"*
do
	base64 -d "$file" | xxd -r > $(basename "$file")
	echo "$file decrypted"
	mv $(basename "$file") nature
done
