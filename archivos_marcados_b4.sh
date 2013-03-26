#tamfinal=3907392000
tamfinal=8192

aux=2
cont=0
while [ $aux -le  $tamfinal ]; do

	((aux=aux+aux))
	((cont++))
done

echo "auxiliar" $aux
echo "contado" $cont

echo -e -n "\xBB" > datos2/datos0.txt

((aux=cont))

echo "vamos a contar desde 1 a " $aux

for (( a=1 ; a<=aux ; a++ ))
do
	((b=a-1))
	cat datos2/datos$b.txt > datos2/datos$a.txt
	cat datos2/datos$b.txt >> datos2/datos$a.txt
	echo $b
	echo $a
done

