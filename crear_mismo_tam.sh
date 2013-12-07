valor_final=3907388
((aux=valor_final/4))

echo "vamos a contar desde 1 a " $aux

for (( a=1 ; a<=aux ; a++ ))
do
	echo -e -n "\xAA$a" > /media/B030-FF46/$a.txt
	echo "vuelta $a"
done
