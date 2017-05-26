#include <stdio.h>
#include <string.h>
#include <iostream>

int main()
{
    int a;
    scanf("%d", &a);
    int i, j;
    char str[a][150], temp[50];


    for(i=0; i< a; ++i)
    {
		scanf("%s",str[i]);
	}


    for(i=0; i< (a - 1); ++i)
        for(j=i+1; j< a; ++j)
        {
            if(strcmp(str[i], str[j])>0)
            {
                strcpy(temp, str[i]);
                strcpy(str[i], str[j]);
                strcpy(str[j], temp);
            }
        }

    for(i=0; i< a; ++i)
    {
        puts(str[i]);
    }

    return 0;
}
