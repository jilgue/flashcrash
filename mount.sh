rm md5.txt

for (( a=1 ; a<999999999999999 ; a++ ))
do
	sudo umount /media/usb0
	sudo mount /dev/sdb1 /media/usb0
	echo "$a" >> md5.txt
	dd if=/dev/sdb1 | md5sum >> md5.txt

done
