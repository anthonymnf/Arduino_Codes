//-------------------------
// C Code for Blinking LED
//-------------------------
extern "C"{
  void start();
  void led1();
  void led2();
  void led3();
}

void setup(){
  start();
}

void loop(){
  led1(); delay(1000);
  led2(); delay(1000);
  led3(); delay(1000);
}
