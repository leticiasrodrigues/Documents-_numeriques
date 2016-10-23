#! /bin/sh

#sulfixes = file extensions
ls coreutils-8.25/src| cut -s -d "." -f2 | sort -u | wc -l