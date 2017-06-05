#include<iostream>
using namespace std;
int main(){
int min=0,max=120,mid,response;
cout<<"If true, input 1\n";
cout<<"If false, input 0\n";
while(max-min>1){
mid=(min+max)/2;
cout<<"Is your age less than "<<mid<<"?\n";
cin>>response;
if(response==1)
max=mid;
else
min=mid;
}
cout<<"Age is=:"<<min<<endl;
return 0;
}
