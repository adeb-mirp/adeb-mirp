#include<iostream>
#include<cmath>
using namespace std;
int main(){
	int x,y,x1,y1,x2,y2;		
	int AB,BC,CA;
	cout<<"Enter coordinates of 1st point"<<endl;
	cin>>x>>y;
	cout<<"Enter coordinates of 2nd point"<<endl;
	cin>>x1>>y1;
	cout<<"Enter coordinates of 3rd point"<<endl;
	cin>>x2>>y2;
	AB=sqrt(((x-x1)*(x-x1))+((y-y1)*(y-y1)));
	BC=sqrt(((x-x2)*(x-x2))+((y-y2)*(y-y2)));
	CA=sqrt(((x1-x2)*(x1-x2))+((y1-y2)*(y1-y2)));
	if((AB==BC)&&(BC==CA))
	cout<<"Equilateral"<<endl;
	else if(((AB!=BC)&&(BC!=CA))&&(CA!=AB))
	cout<<"Scalene"<<endl;
	else 
	cout<<"Isosceles"<<endl;
	return 0;
}	
