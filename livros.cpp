#include <stdio.h>
#include <string.h>

int verificaPalavra(){
	char a[40];
	scanf("%s", a);
	int length = strlen(a);
	int vocals = 0;
	
	for(int i = 0; i <= length; i++)
	{
		if(a[i] == 'a' || a[i] == 'A' || a[i] == 'e' || a[i] == 'E' || a[i] == 'i' || a[i] == 'I' || a[i] == 'o' || a[i] == 'O' || a[i] == 'u' || a[i] == 'U')
		{
			++vocals;
		}
	
	}
	
	if(vocals == 0)
	{
		printf("%s\n", a);
		
		return 1;
	}
	return 0;
		
	
	

}
int main(){
    int ungratefulword = 0;
    
    while(ungratefulword < 3){
		ungratefulword += verificaPalavra();
	
	}
	
    
   
		
		    
}
