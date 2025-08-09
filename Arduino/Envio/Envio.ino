int dato, dato2;
char LETRA;
int estado;
void setup(){
Serial.begin(9600);
pinMode(LED_BUILTIN, OUTPUT);
}
void loop(){
  while(Serial.available()>0){
    LETRA=Serial.read();
    if(LETRA == 'C'){
      dato= Serial.parseInt();
    }
    if(LETRA == 'A'){
      dato2= Serial.parseInt();
    }
    Serial.println(dato);
    }
if(dato2==1 && estado != 1){
  digitalWrite(LED_BUILTIN, LOW);   
  delay(500);                  
  estado=1;
}
if(dato==200 && estado !=2){
  digitalWrite(LED_BUILTIN, HIGH);   
  delay(500);
  estado=2;              
}
}
