#include<iostream>
using namespace std;
int main(){
    int n,x,sum=0;
    cout<<"Enter a number"<<endl;
    cin>>n;
    while(n>0){
        x=n%10;
        sum+=x;        
        n/=10;        
        }
    cout<<"Sum of the digits="<<sum<<endl;
    return 0;
    cout<<sum;
}
