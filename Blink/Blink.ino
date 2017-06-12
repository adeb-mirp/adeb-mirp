int RX_LED=17;
void setup() {
  // put your setup code here, to run once:
  pinMode(RX_LED,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(RX_LED,HIGH);
  TXLED1;
  delay(500);
  digitalWrite(RX_LED,LOW);
  TXLED0;
  delay(500);
}
