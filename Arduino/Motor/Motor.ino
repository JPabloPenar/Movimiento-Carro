#define STEP 10      
#define DIR 9    

void setup() 
{
  pinMode(STEP, OUTPUT);  
  pinMode(DIR, OUTPUT);  
}

void loop() 
{
  digitalWrite(DIR, HIGH);    // giro en un sentido
  for(int i = 0; i < 200; i++){     // 200 pasos para motor de 0.9 grados de angulo de paso
    digitalWrite(STEP, HIGH);       // nivel alto
    delay(20);          // por 10 mseg
    digitalWrite(STEP, LOW);        // nivel bajo
    delay(20);          // por 10 mseg
  }
  delay(2000);          // demora de 2 segundos

  digitalWrite(DIR, LOW);     // giro en sentido opuesto
  for(int i = 0; i < 200; i++){
    digitalWrite(STEP, HIGH); 
    delay(20);
    digitalWrite(STEP, LOW);
    delay(20);
  }
  delay(2000);          // demora de 2 segundos
}
