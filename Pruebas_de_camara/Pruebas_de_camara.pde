import processing.video.*;
Capture camara, camara2;
int cam=1;
void setup(){
  size(1280,720);
  String[] listaCam = Capture.list();
  printArray(listaCam);
  int webcam = 5;
  camara = new Capture( this, listaCam[webcam]);
  camara.start();
  int webcam2 = 4;
  camara2 = new Capture( this, listaCam[webcam2]);
  camara2.start();
  
  background(0);
}
void draw(){
  
  if (camara.available()&& cam==1) {
    camara.read();
    image( camara , 20 , 50);
  
  }
  
  if (camara2.available() && cam==2) {
    camara2.read();
    image( camara2 , 20 , 50);
  }
  
  if(mousePressed){
  cam=2;
  }else{
  cam=1;
  }
}
