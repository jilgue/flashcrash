rm stam.txt
rm diff.txt
for (( b=0 ; b<10 ;b++))
do
	let vueltas=$b

for (( a=1 ; a<3 ; a++ ))
do
	echo "numero serie ${b}_${a}"
	echo -e -n "En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lentejas los viernes, algún palomino de añadidura los domingos, consumían las tres partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas con sus pantuflos de lo mismo, los días de entre semana se honraba con su vellori de lo más fino. Tenía en su casa una ama que pasaba de los cuarenta, y una sobrina que no llegaba a los veinte, y un mozo de campo y plaza, que así ensillaba el rocín como tomaba la podadera. Frisaba la edad de nuestro hidalgo con los cincuenta años, era de complexión recia, seco de carnes, enjuto de rostro; gran madrugador y amigo de la caza. Quieren decir que tenía el sobrenombre de Quijada o Quesada (que en esto hay alguna diferencia en los autores que deste caso escriben), aunque por conjeturas verosímiles se deja entender que se llama Quijana; pero esto importa poco a nuestro cuento; basta que en la narración dél no se salga un punto de la verdad. ${b}_${a}" > datos/${b}_${a}datos.txt
	#cat datos/datos.txt >> datos/${b}_${a}datos.txt
	#echo -e -n "numero serie ${b}_${a}" >> datos/${b}_${a}datos.txt
	dd if=datos/${b}_${a}datos.txt of=/media/usb0/${b}_${a}datos.txt
	rm datos/*_*datos.txt
done

dd if=/dev/sdc1 of=copias/${b}.iso

echo "vuelta ${b}" >> diff.txt

if (($b != 0 ))
then
((c=b-1))
cmp -l copias/${b}.iso copias/${c}.iso >> diff.txt
fi

echo "" >> diff.txt

rm -f /media/usb0/*datos.txt

df --block-size=KB | grep sdc1 > tam.txt
cut -c32-52 tam.txt >> stam.txt

frase="vuelta "
echo "$frase $vueltas" >> stam.txt
echo " " >> stam.txt

done
