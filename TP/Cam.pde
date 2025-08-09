  void cam(){
  if (camara1.available() && cam ==1 ) {
    camara1.read();
    image( camara1 , 20 , 50);
  }
    if (camara2.available() && cam ==2) {
     camara2.read();
    image( camara2 , 20 , 50);
  }
    if (camara3.available() && cam ==3) {
    camara3.read();
    image( camara3 , 20 , 50);
  }
  
  }
