#include<iostream>
using namespace std;
int main(){
int cols,rows;
cout<<"Enter no. of columns="<<endl;
cin>>cols;
cout<<"Enter no. of rows="<<endl;
cin>>rows;
for(int i=0;i<cols;i++){
for(int j=0;j<rows;j++){
if((i%2)==0)
cout<<"* ";
else
cout<<" *";
}
cout<<"\n";
}
return 0;
}
