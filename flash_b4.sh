ruta="/media/cesar/usb3"
sdd="sdb1"
rm stam.txt
for (( b=0 ; b<9999999999999999999999999 ;b++))
do
	let vueltas=$b

for (( a=1 ; a<30 ; a++ ))
do
	echo "numero serie ${b}_${a}"
	echo -e -n "numero serie ${b}_${a}" > datos/${b}_${a}datos.txt
	for (( c=1 ; c<200 ; c++ ))
	do
		echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	done
	#cat datos/datos.txt >> datos/${b}_${a}datos.txt
	#echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	dd if=datos/${b}_${a}datos.txt of=${ruta}/${b}_${a}datos.txt
	rm datos/*_*datos.txt
done

sudo umount ${ruta}
echo "umount"
sudo mount -o gid=1000,uid=1000 /dev/${sdd} ${ruta}
echo "mount"
rm -f ${ruta}/*datos.txt
echo "rm"
sudo umount ${ruta}
echo "umount"
sudo mount -o gid=1000,uid=1000 /dev/${sdd} ${ruta}
echo "mount"

df --block-size=KB | grep ${sdd} >> stam.txt

frase="vuelta "
echo "$frase $vueltas" >> stam.txt
echo " " >> stam.txt

echo "---------------------------------"
echo "---------------------------------"
echo "vuelta"
echo $vueltas

done

exit
