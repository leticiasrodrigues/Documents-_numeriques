#include <stdio.h>
#include <string.h>

int main (int argc, char *argv[])
{
	if (argc == 1){
		printf("No arguments\n");
	} else {
		int j = 1;
		FILE *fp;
		for (j; j<argc; j++){
			fp = fopen(argv[j],"r");
			if (fp == NULL){
				fprintf(stderr, "File not found\n");
			} else {
				char buff[255];
				int sum = 0;
				int no_errors = 0;
				while(fscanf(fp, "%s", buff) != EOF){
					if(verify_format(buff)==1){
						sum+=atoi(buff);
					} else {
						no_errors = 1;
						break;
					}
				}
				if (no_errors == 0){
					printf("sum for file %s: %d\n", argv[j],sum);
				}
			}
		}
	}
	return 0;
}

int verify_format(char xx[]){
	int i=0;
	while (xx[i] != '\0'){
		//printf("mot %s, char %d", xx, xx[i]);
		if (xx[i]<48 || xx[i]>57){
			fprintf(stderr, "Wrong format\n");
			return 0;
		}
		i++;
	}
	return 1;
}
