rm md5.txt

#for a in $(seq 9999);
for (( a=1 ; a<999999999999999 ; a++ ))
do
	sudo umount /media/usb0
	sudo mount /dev/sdc1 /media/usb0
	echo "$a" >> md5.txt
	dd if=/dev/sdc1 | md5sum >> md5.txt

done
