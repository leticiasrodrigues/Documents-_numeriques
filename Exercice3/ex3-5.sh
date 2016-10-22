#! /bin/bash

declare -a sulfixes
#sulfixes = file extensions
sulfixes=$(ls coreutils-8.25/src| cut -s -d "." -f2 | sort -u)
for s in $sulfixes; do
	echo "SULFIXE: $s"
	ls coreutils-8.25/src| grep "\.$s$"
	echo "TOTAL: $(ls coreutils-8.25/src| grep "\.$s$" | wc -l)"
done
	