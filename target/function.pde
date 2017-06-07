void drawtarget(int x,int y,int n){
  for(int i=0;i<n;++i){
    for(int j=n*5;j>=5;j=j-5){
     int radius=j;
     if(j%2==1)
     fill(0);
     else
     fill(255);
     ellipse(x,y,2*radius,2*radius);
    }
  }
}
    