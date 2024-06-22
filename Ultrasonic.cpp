#define ECHO_PIN 2
#define TRIG_PIN 3
const int LED1 = 10;

void setup()
{
     Serial.begin(115200);
     pinMode(LED1, OUTPUT);
     pinMode(ECHO_PIN, INPUT);
     pinMode(TRIG_PIN, OUTPUT);
}

float readDistanceCM()
{
     digitalWrite(TRIG_PIN, LOW);
     delayMicroseconds(2);
     digitalWrite(TRIG_PIN, HIGH);
     delayMicroseconds(10);
     digitalWrite(TRIG_PIN, LOW);
     int duration = pulseIn(ECHO_PIN, HIGH);
     return duration * 0.034 /2;
}

void loop()
{
     float distance = readDistanceCM();
     if(distance <= 100){
        digitalWrite(LED1, HIGH);
     }else{
      digitalWrite(LED1, LOW);
     }
     Serial.println("Distance : " + String(readDistanceCM()));
     delay(300);
}
