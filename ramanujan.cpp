#include <iostream>
using namespace std;

int main()
{
	int n=0; //r0
	int flag=0;//r1
 	while(flag<2)
    	{
        	n++;
		flag=0;
        	for(int i=1; i*i*i<n/2; i++)
        	{
            	int i3=i*i*i;
            	for(int j=i+1; j*j*j<=n-i3; j++)
           	{
               		int j3=j*j*j;
                	if(i3+j3==n)
                	{
                    		flag++;
                    		//cout<<i3<<" "<<j3;
                    	break;
                	}
            	}
        }
    }
    cout<<n;
    return 0;
}
