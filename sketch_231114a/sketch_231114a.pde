import gab.opencv.*;
import processing.video.*;
Capture camara, camara2;
int cam= 1;
int num;
void setup(){
  size(1200,600);
  String[] listaCam = Capture.list();
  printArray(listaCam);
  int webcam = 3;
  int webcam2 = 5;
  camara = new Capture( this, listaCam[webcam]);
  camara2 = new Capture( this, listaCam[webcam2]);
   camara.start();
   camara2.start();
}
void draw(){
 
 if ( camara.available() ) {
    //lee el nuevo fotograma
    camara.read();
   if(cam==1){
    image( camara , 20 , 50);
  }
}
  if ( camara2.available() ) {
    //lee el nuevo fotograma
    camara2.read();
    if(cam==2){
    image( camara2 , 20 , 50);
  }
  }
}


void keyPressed(){

  if(key== TAB && cam==1){
   
  cam=2;
   background(0);
 }
 if(keyCode== ENTER && cam==2){
   cam=1;
    background(255);
 }
 
}
