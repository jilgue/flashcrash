valor_final=3907392
((aux=valor_final/4))

echo "vamos a contar desde 1 a " $aux

for (( a=1 ; a<=aux ; a++ ))
do
	echo -e -n "\xAA$a" > /media//datos$a.txt
done
