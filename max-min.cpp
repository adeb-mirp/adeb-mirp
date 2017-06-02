#include<iostream>
using namespace std;
int main(){
	int n,number;
	int max=-1000000000,min=1000000000;
	cout<<"Enter the number of values"<<endl;
	cin>>n;
	for(int i=0;i<n;i++){
		cout<<"Enter the number"<<endl;
		cin>>number;
		if(number>max)
			max=number;
		if(number<min)
			min=number;
	}
	cout<<"Max is="<<max<<endl;
	cout<<"Min is="<<min<<endl;
	return 0;	
}

