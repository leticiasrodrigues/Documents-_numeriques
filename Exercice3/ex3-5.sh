#! /bin/bash

declare -a sulfixes
declare -i count
#sulfixes = file extensions
sulfixes=$(ls coreutils-8.25/src| cut -s -d "." -f2 | sort -u)
for s in $sulfixes; do
	echo "SULFIXE: $s"
	files=$(ls coreutils-8.25/src| grep "\.$s$")
	echo "TOTAL: $(ls coreutils-8.25/src| grep "\.$s$" | wc -l)"
	count=0
	for f in $files; do	
		echo $f
		count=$count+$(cat coreutils-8.25/src/$f | wc -l)
	done
	echo "TOTAL LINES: $count"
done
	