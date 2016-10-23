#! /bin/bash

FILE="copie"

if [ -e "$FILE" ]; then
	rm $FILE
fi

cp myical_promo_gmt.2015.09.10.ics $FILE
sed -i "s/BEGIN:VEVENT/<VEVENT>/g" $FILE
sed -i "s/END:VEVENT/<\/VEVENT>/g" $FILE

sed -i "s/\([A-Z;=]*\):\(.*\)/<\1>\2<\/\1>/g" $FILE