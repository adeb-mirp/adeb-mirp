#include<iostream>
using namespace std;
int main(){
int n,sum=0;
cout<<"Enter the number\n";
cin>>n;
for(int i=2;i<n;i++){
        if(n%i==0)
        sum+=i;
    }
    if(sum!=0)
    cout<<"Not prime\n";
    else
    cout<<"Prime\n";
    return 0;
}

