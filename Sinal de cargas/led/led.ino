extern "C"{
  void start();
  void led(byte);
}

void setup(){
  start();
}

void loop(){
  led(1); delay(2000);
  led(0); delay(2000);

}
