#include<iostream>
#include<cmath>
using namespace std;
	int main(){
	int a,b,c,x1,x2;
	cout<<"Enter the coefficient of x^2"<<endl;
	cin>>a;
	cout<<"Enter the coefficient of x"<<endl;
	cin>>b;
	cout<<"Enter the constant"<<endl;
	cin>>c;
	x1=((-b)+(sqrt(b*b-4*a*c))/(2*a));
	x2=((-b)-(sqrt(b*b-4*a*c))/(2*a));
	cout<<"Root1="<<x1<<endl;
	cout<<"Root2="<<x2<<endl;
	if(((b*b)-(4*a*c))>0)
	cout<<"Real root"<<endl;
	if(((b*b)-(4*a*c))<0)
	cout<<"Imaginary root"<<endl;
	return 0;
}
	
