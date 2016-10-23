#! /bin/bash

function ex(){
	sulfixes=$(ls $1 | cut -s -d "." -f2 | sort -u)
	for s in $sulfixes; do
		echo "SULFIXE: $s"
		files=$(ls $1| grep "\.$s$")
		echo "TOTAL: $(ls $1 | grep "\.$s$" | wc -l)"
		count=0
		for f in $files; do	
			count=$(($count+$(cat $1/$f | wc -l)))
		done
		echo "TOTAL LINES: $count"
	done
}
directories=$(ls -d coreutils-8.25/*/)
for d in $directories; do
	echo $d
	ex $d
done