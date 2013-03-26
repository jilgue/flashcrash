#include <stdio.h>

void main(){
	

	int temp = 0;
	int temp2 = 0;
	long int j,i;

	FILE *archivo;
 
        archivo = fopen("002_ID1.iso","r");

	FILE *archivo2;
 
        archivo2 = fopen("002_nada.iso","r");

	for(i=0;i<64156072960;i++)
	{
		temp = getc(archivo);
		temp2 = getc(archivo2);
		if(temp!=temp2)
		{
			printf("%i\t%x\t%x\n",i,temp,temp2);
		}
		else
		{
			printf("%i\n",i);
		}
	}
}
