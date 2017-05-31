#include<iostream>
#include<cmath>
using namespace std;
	int main(){
	float a,b,c,x1,x2,determinant,real_part,imaginary_part;
    cout << "Enter coefficients a,b and c:";
    cin>>a>>b>>c;
    determinant=b*b-4*a*c;
    
    if(determinant>0){
        x1=(-b+sqrt(determinant))/(2*a);
        x2=(-b-sqrt(determinant))/(2*a);
        cout<<"Roots are real and different."<<endl;
        cout<<"x1="<<x1<<endl;
        cout<<"x2="<<x2<<endl;
    }
    
    else if(determinant== 0){
        cout<<"Roots are real and same."<<endl;
        x1=(-b+sqrt(determinant))/(2*a);
        cout<<"x1=x2="<<x1<<endl;
    }

    else{
        real_part=-b/(2*a);
        imaginary_part=sqrt(-determinant)/(2*a);
        cout<<"Roots are complex and different."<<endl;
        cout<<"x1="<<real_part<<"+"<<imaginary_part<<"i"<<endl;
        cout<<"x2="<<real_part<<"-"<<imaginary_part<<"i"<<endl;
    }

    return 0;
}
