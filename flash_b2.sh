dispo="4E06-0AB9"
sdd="sdb"
rm stam.txt	
for (( b=0 ; b<999999999999999999999 ;b++))
do
	let vueltas=$b

for (( a=1 ; a<3 ; a++ ))
do
	echo "numero serie ${b}_${a}"
	echo -e -n "numero serie ${b}_${a}" > datos/${b}_${a}datos.txt
	for (( c=1 ; c<200 ; c++ ))
	do
		echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	done
	#cat datos/datos.txt >> datos/${b}_${a}datos.txt
	#echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	dd if=datos/${b}_${a}datos.txt of=/media/${dispo}/${b}_${a}datos.txt
	rm datos/*_*datos.txt
done

rm -f /media/${dispo}/*datos.txt

df --block-size=KB | grep ${sdd} >> stam.txt
#cut -c32-52 tam.txt >> stam.txt

frase="vuelta "
echo "$frase $vueltas" >> stam.txt
echo " " >> stam.txt

#sudo umount /media/usb0
#sudo mount /dev/sdc1 /media/usb0

done
