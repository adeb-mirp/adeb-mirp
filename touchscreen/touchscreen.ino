int y1=A0,y2=A2,x1=A1,x2=A3;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  pinMode(y1,INPUT);
  pinMode(y2,INPUT);
  digitalWrite(y2,LOW);
  pinMode(x1,OUTPUT);
  pinMode(x2,OUTPUT);
  digitalWrite(x1,HIGH);
  digitalWrite(x2,LOW);
  int xvalue=analogRead(y1);
  Serial.print("x=");
  Serial.print(xvalue);
  Serial.print("\t");
  pinMode(x1,INPUT);
  pinMode(x2,INPUT);
  digitalWrite(x2,LOW);
  pinMode(y1,OUTPUT);
  pinMode(y2,OUTPUT);
  digitalWrite(y1,HIGH);
  digitalWrite(y2,LOW);
  int yvalue=analogRead(x1);
  Serial.print("y=");
  Serial.println(yvalue);
  delay(100);
}

