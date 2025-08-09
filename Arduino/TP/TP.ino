#define STEP 10      
#define DIR 9    
const int fin = 13;
int Efin;
int x, PA, t= 10;
int LETRA;
int datoP, datoT, datoI, datoD, datoR;
void setup() {
  

Serial.begin(9600);
pinMode(STEP, OUTPUT);  
pinMode(DIR, OUTPUT);  
pinMode(fin, INPUT);
}

void loop() {
Serial.print(x);
Serial.print('\n');

  if(Serial.available()){
  
    LETRA =Serial.read();

    if(LETRA == 'P'){
      datoP= Serial.parseInt();
    }
    if(LETRA == 'T'){
      datoT= Serial.parseInt();
      if(datoT>=2 && datoT<1000){
        t=datoT;
      }
    }
    
    if(LETRA == 'I'){
      datoI= Serial.parseInt();
    }
    
    if(LETRA == 'D'){
      datoD= Serial.parseInt();
    }
    if(LETRA == 'R'){
      datoR= Serial.parseInt();
    }
  }

if(datoP>0 && datoP>x){
    digitalWrite(DIR, LOW);    
    digitalWrite(STEP, HIGH); 
    delay(t);
    digitalWrite(STEP, LOW);
    delay(t);
    x= x+1;
    
}
if(datoP>0 && datoP<x){
    digitalWrite(DIR, HIGH);    
    digitalWrite(STEP, HIGH); 
    delay(t);
    digitalWrite(STEP, LOW);
    delay(t);
    x= x-1;
}
if(datoP==x){
datoP =0;
}


if(datoI>0){
 digitalWrite(DIR, LOW);     
  for(int i = 0; i < datoI; i++){
    digitalWrite(STEP, HIGH); 
    delay(t);
    digitalWrite(STEP, LOW);
    delay(t);
    x=x+1;
  }
  
  datoI =0;
  delay(2000);  
}
if(datoD>0){
 digitalWrite(DIR, HIGH);     
  for(int i = 0; i < datoD; i++){
    digitalWrite(STEP, HIGH); 
    delay(t);
    digitalWrite(STEP, LOW);
    delay(t);
     x=x-1;
  }
  datoD=0;

  delay(2000);  
}

if(datoR == 5){
   while(Efin == LOW){
   digitalWrite(DIR, HIGH);
   Efin = digitalRead(fin);
   digitalWrite(STEP, HIGH); 
   delay(t);
   digitalWrite(STEP, LOW);
   delay(t);
   }
   while(Efin == HIGH){
   digitalWrite(DIR, LOW);
   Efin = digitalRead(fin);
   digitalWrite(STEP, HIGH); 
   delay(t);
   digitalWrite(STEP, LOW);
   delay(t);
   } 
x=0;
datoR=0;
}
}
