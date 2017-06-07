int displayWidth=500;
int displayHeight=500;
int radius=5;
int num=5;
float circlegap=3*radius;
void setup(){
size(displayWidth,displayHeight);
}
void draw(){
background(255);
fill(0);
drawcircles(radius,num);
}