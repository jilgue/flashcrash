rm stam.txt	
for (( b=0 ; b<999999999999999999999999 ;b++))
do
	let vueltas=$b

for (( a=1 ; a<2 ; a++ ))
do
	echo "numero serie ${b}_${a}"
	echo -e -n "numero serie ${b}_${a}" > datos/${b}_${a}datos.txt
	#cat datos/datos.txt >> datos/${b}_${a}datos.txt
	#echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	dd if=datos/${b}_${a}datos.txt of=/media/SIN\ TITULO/${b}_${a}datos.txt
	rm datos/*_*datos.txt
done

rm -f /media/SIN\ TITULO/*datos.txt

df --block-size=KB | grep sdd1 > tam.txt
cut -c32-52 tam.txt >> stam.txt

frase="vuelta "
echo "$frase $vueltas" >> stam.txt
echo " " >> stam.txt

done
