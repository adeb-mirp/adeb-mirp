void drawcircles(float r,int n){
  for(int i=0;i<n;++i)
  for(int j=0;j<n;++j)
  ellipse(mouseX+i*circlegap,mouseY+j*circlegap,r*2,r*2);
}