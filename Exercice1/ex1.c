#include <stdio.h>

int main (int argc, char * argv[])
{
	int j =1;
	for(j ; j<argc; j++){
		printf("%d %s \n", j, argv[j]);
	}
	return 0;
}
