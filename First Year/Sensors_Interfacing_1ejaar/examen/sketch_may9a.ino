int pot = A0;
int pot2 = A1;

int led = 3;

int potValue = 0;
int prevPot = 0;
int potValue2 = 0;
int prevPot2 = 0;


int prev = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(pot, INPUT);
  pinMode(pot2, INPUT);
  pinMode(led,OUTPUT);
  Serial.println("Start");
}

void loop() {
  // digitalWrite(potpin, 1);
  // put your main code here, to run repeatedly:
  potValue = toNine(analogRead(pot));
  potValue2 = toNine(analogRead(pot2));

  // Serial.println(analogRead(pot));
  // Serial.println(potValue);
  // Serial.println(potValue2);
  // delay(100);
  // delay(100);
  if(Serial.available()>0){
    String a = Serial.readString();
    delay(100);
    if(a=="x" and prev==0){
      Serial.println((potValue));
      digitalWrite(led,0);
      prev=1;
    }
    else if (a=="x" and prev==1){
      Serial.println((potValue2));
      digitalWrite(led, 1);
      prev=0;
    }
  }
  // Serial.println("test");
}

int toNine(float value){
  int a = (value/1023)*9;
  return a;
}
