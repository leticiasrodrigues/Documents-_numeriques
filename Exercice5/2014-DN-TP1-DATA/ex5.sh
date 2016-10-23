#! /bin/bash

rm tmp
sed "s/\(.*\)\t\(.*\)\t\(.*\)/Majeure\t\3\t\2\t\L\2\.\L\3@gmail\.myst/g" maj.txt >> tmp
sed "s/\(.*\)\t\(.*\)\t\(.*\)\t\(.*\)/MWI\t\U\2\E\t\3\t\4/g" mwi.txt >> tmp
sed "s/\(.*\)\t\(.*\)\t\(.*\)/Option\t\1\t\2\t\3/g" opt.txt >> tmp