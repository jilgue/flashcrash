df --block-size=KiB | grep sdb1 > tam.txt
tam_final=$(cut -c56-63 tam.txt)
echo $tam_final
((valor_final=tam_final-1))
((valor_final_bits=valor_final*1024))
echo "valor final" $valor_final_bits
final_binario=$(echo "obase=2; $valor_final_bits"| bc)
echo $final_binario > long.txt
echo "valor en binario" $final_binario
long=${#final_binario}


((long--))

total=0

((exp=long))

for ((a=1;a<=long;a++))
do
bit=$(cut -c$a-$a long.txt)
#echo "a="$a "bit sacado de long.txt" $bit
if((bit==1))
then
	((exponente=2**exp))
#	echo "exponente" $exp
	echo $exp $exponente
	((total=total+exponente))
	
	cat datos/datos$exp.txt >> datos/datosfin.txt
fi
((exp--))
done

echo $total
