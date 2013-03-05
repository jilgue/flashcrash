#include <stdio.h>

void main(){
	

	int temp = 0;
	int temp2 = 0;
	int j,i;

	FILE *archivo;
 
        archivo = fopen("datos/datos5_1.txt","r");

	FILE *archivo2;
 
        archivo2 = fopen("datos/datos5_2.txt","r");

	for(i=0;i<3;i++)
	{
		temp = getc(archivo);
		temp2 = getc(archivo2);
		if(temp!=temp2)
		{
			printf("%i\t%i\n",temp,temp2);
		}
	}
}
