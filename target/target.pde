int displayWidth=800;
int displayHeight=400;
int x=displayWidth/2,y=displayHeight/2;
int n=9;
void setup(){
  size(displayWidth,displayHeight);
}
void draw(){
  if(mousePressed){
  drawtarget(mouseX,mouseY,n);
  delay(200);
  }
}