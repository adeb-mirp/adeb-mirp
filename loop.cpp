#include<iostream>
using namespace std;
int main(){
int x[5]={1,2,3,4,5};
for(int i=0;i<5;i++){
cout<<x[i]<<" ";
}
cout<<""<<endl;
char name[350]="my_name";
for(int j=0;name[j]!='\0';j++){
cout<<name[j];
}
cout<<""<<endl;
cout<<"Enter first name"<<endl;
cin>>name;
for(int a=0;name[a]!='\0';a++){
cout<<name[a];
}
cout<<""<<endl;
return 0;
}
