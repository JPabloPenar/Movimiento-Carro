#define STEP 10      
#define DIR 9    

int estado;
char LETRA;
int datoC, datoD;
void setup() {
  
Serial.begin(9600);
pinMode(STEP, OUTPUT);  
pinMode(DIR, OUTPUT);  

}

void loop() {

  if(Serial.available()){
  
  LETRA =Serial.read();

  
 if(LETRA == 'C'){
      datoC= Serial.parseInt();
    }
    if(LETRA == 'D'){
      datoD= Serial.parseInt();
    }
  }
if((LETRA =='A')&& (estado!=1)){
  digitalWrite(DIR, LOW); 
 for(int i = 0; i < 200; i++){     // 200 pasos para motor de 0.9 grados de angulo de paso
    digitalWrite(STEP, HIGH);       // nivel alto
    delay(20);          // por 10 mseg
    digitalWrite(STEP, LOW);        // nivel bajo
    delay(20);          // por 10 mseg
  }
estado=1;
LETRA=0;
  delay(2000);          // demora de 2 segundos
}
if((LETRA =='B') && (estado!=2)){
 digitalWrite(DIR, HIGH);     // giro en sentido opuesto
  for(int i = 0; i < 200; i++){
    digitalWrite(STEP, HIGH); 
    delay(20);
    digitalWrite(STEP, LOW);
    delay(20);
  }
  LETRA=0;
  estado=2;
  delay(2000);  
}

if(datoC>0){// && (estado!=3)){ 
 digitalWrite(DIR, LOW);     
  for(int i = 0; i < datoC; i++){
    digitalWrite(STEP, HIGH); 
    delay(20);
    digitalWrite(STEP, LOW);
    delay(20);
  }
  estado=3;
  datoC =0;
  delay(2000);  
}
if(datoD>0){// && (estado!=4)){
 digitalWrite(DIR, HIGH);     
  for(int i = 0; i < datoD; i++){
    digitalWrite(STEP, HIGH); 
    delay(20);
    digitalWrite(STEP, LOW);
    delay(20);
  }
  datoD=0;
  estado=4;
  delay(2000);  
}
  delay(100);
}
