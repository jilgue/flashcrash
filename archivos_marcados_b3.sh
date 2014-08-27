#
# Crea ficheros de todos los tamaños posibles hasta llegar a 'valor_final'
#
valor_final=3907388
((tamfinal=valor_final*1024))

aux=2
cont=0
while [ $aux -le  $tamfinal ]; do

	((aux=aux+aux))
	((cont++))
done

echo "auxiliar" $aux
echo "contado" $cont
rm datos/*
echo -e -n "\x00" > datos/datos0.txt

((aux=cont))

echo "vamos a contar desde 1 a " $aux

for (( a=1 ; a<=aux ; a++ ))
do
	((b=a-1))
	cat datos/datos$b.txt > datos/datos$a.txt
	cat datos/datos$b.txt >> datos/datos$a.txt
	echo $b
	echo $a
done

