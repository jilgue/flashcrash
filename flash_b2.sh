for (( b=0 ; b<1 ;b++))
do
	let vueltas=$b

for (( a=1 ; a<6 ; a++ ))
do
	echo -e -n "numero serie ${b}_${a}" > datos/${b}_${a}datos.txt
	cat datos/datos.txt >> datos/${b}_${a}datos.txt
	echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	dd if=datos/${b}_${a}datos.txt of=/media/KINGSTON/${b}_${a}datos.txt
	rm datos/*_*datos.txt
done

#rm -f /media/KINGSTON/*datos.txt

df --block-size=KB | grep sdb1 > tam.txt
cut -c32-52 tam.txt >> stam.txt

frase="vuelta "
echo "$frase $vueltas" >> stam.txt
echo " " >> stam.txt

done
