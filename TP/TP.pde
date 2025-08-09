import gab.opencv.*;
import processing.video.*;
import processing.serial.*;

  Serial puerto;
  Capture camara1, camara2, camara3;
  int cam=1;
  int estado=1;
  int dato, info;
  String LETRA;
  String envi;
  String num= "";
void setup() {
  size( 1200, 720);
  background(0,0,100);
  textAlign(CENTER);
  ellipseMode(CENTER);
  strokeWeight(15);
  stroke(255);
  rect(20,50,640,480,15); 
  puerto = new Serial( this, "COM5", 9600);
    
  String[] listaCam = Capture.list();
  printArray(listaCam);
  
  int webcam1= 4;
  int webcam2= 3;
  
  camara1 = new Capture( this, listaCam[webcam1]);
  camara2 = new Capture( this, listaCam[webcam2]);
  camara3 = new Capture( this, 640, 480);
  
  camara1.start();
  camara2.start();
  camara3.start();
  
  
}
void draw() {
Serial.list();
  if(estado ==1){
  
  strokeWeight(1);
  stroke(255);
  fill(0,0,100);
  ellipse(170, 625, 100, 100); //1
  ellipse(340, 625, 100, 100); //2
  ellipse(510, 625, 100, 100); //3
  rect(710,50,200,100,15); //ARRIBA I
  rect(960,50,200,100,15); //ARRIBA D
  rect(710,200,200,100,15); // ABAJO I
  rect(960,200,200,100,15); // ABAJO D
  rect(710, 335, 450, 90, 15); //Barra de texto
  rect(710, 575, 450, 90, 15); //Reset
  fill(255);
  
  text(num, 935, 390); //texto de búsqueda
  
    
  fill(255);  
  rect(710, 445, 200, 90, 15); //LETRA
  rect(960, 445, 200, 90, 15); //DATO
  textSize(40);
  text("1",170,635);
  text("2",340,635);
  text("3",510,635);
  text("Posición", 810, 110); 
  text("Tiempo", 1060, 110);
  text("Izquierda", 810, 260);
  text("Derecha", 1060, 260);
  text("Reinicio",935, 630);
  fill(0,0,100);
 
estado=2;
  }
botones();
cam();
 text(dato, 1060, 500);
}
void keyPressed(){
  if(keyCode==BACKSPACE){
 if(num.length()>=1){
    num = num.substring(0, num.length()-1);
    return;
 }
}
  if(keyCode==ENTER && num.length() >=1){
   
    dato = Integer.parseInt(num);
    num = ""; 
    if(LETRA != null){
    puerto.write(envi);
    }
    return;
  
}
 
 
 if(!(key >='0' && key <= '9') || key == CODED){
 return;
 }
 
   if(num.length()==3){
    
    dato = Integer.parseInt(num);
    num = "";
    if(LETRA != null){
    puerto.write(envi);
    }
    return;
 }
  num+= key;
}
