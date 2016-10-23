#! /bin/bash

FILE="calendar"

if [ -e "$FILE" ]; then
	rm $FILE
fi

cp myical_promo_gmt.2015.09.10.ics $FILE
sed -i "s/BEGIN:\(.*\)/<\1>/g" $FILE
sed -i "s/END:\(.*\)/<\/\1>/g" $FILE

sed -i "s/\([A-Z;=]*\):\(.*\)/<\1>\2<\/\1>/g" $FILE