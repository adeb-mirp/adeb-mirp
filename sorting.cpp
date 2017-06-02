#include<iostream>
using namespace std;
int main(){
    int n,temp=0;
    int arr[n];
    cout<<"How many numbers do you wish to input?"<<endl;
    cin>>n;
    cout<<"Input the numbers"<<endl;
    for(int i=0;i<n;i++){
	cin>>arr[i];
    }
    for(int j=1;j<n;j++){        
	for(int l=0;l<(n-j);l++){
	    if(arr[l]>arr[l+1])
	    temp=arr[l];
	    arr[l]=arr[l+1];
	    arr[l+1]=temp;
	}
    }
    cout<<"The numbers in ascending order are"<<endl;
    for(int x=0;x<n;x++){
	cout<<arr[x]<<endl;
    }
    return 0;
}
