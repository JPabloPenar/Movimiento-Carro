void botones(){

  //P
  if(mouseX> 710&& mouseX< 710+200 && mouseY>50 && mouseY<50+100){
  fill(255);
  stroke(0,0,110);
  rect(710,50,200,100,15);
  fill(0,0,100);
  textSize(40);
   text("Posición", 810, 110);
if(mousePressed){

info=1;
}
}else{
estado=1;
}

if(info== 1){
LETRA="P";
text("P", 810, 500);
envi = LETRA +=num;

}
 //T
if(mouseX> 960&& mouseX< 960+200 && mouseY>50 && mouseY<50+100){
  fill(255);
  stroke(0,0,110);
  rect(960,50,200,100,15);
  fill(0,0,100);
  textSize(40);
  text("Tiempo", 1060, 110);
if(mousePressed){
  puerto.write("T");
  info=2;
}
}else{
estado=1;
}
if(info== 2){

text("T", 810, 500);
LETRA="T";
envi = LETRA +=num;
}
 //I
if(mouseX> 710&& mouseX< 710+200 && mouseY>200 && mouseY<200+100){
  fill(255);
  stroke(0,0,110);
  rect(710,200,200,100,15);
  fill(0,0,100);
  textSize(40);
  text("Izquierda", 810, 260);
if(mousePressed){
info=3;
}
}else{
estado=1;
}
if(info== 3){
LETRA="I";
text("I", 810, 500);
envi = LETRA +=num;

}
 //D
if(mouseX> 960&& mouseX< 960+200 && mouseY>200 && mouseY<200+100){
  fill(255);
  stroke(0,0,110);
  rect(960,200,200,100,15);
  fill(0,0,100);
  textSize(40);
  text("Derecha", 1060, 260);
if(mousePressed){
   
  
  info=4;
}
}else{
estado=1;
}
if(mouseX>710 && mouseX<710+450 && mouseY>575 && mouseY<575+90){
fill(255);
rect(710, 575, 450, 90, 15);
fill(0,0,110);
textSize(40);
text("Reinicio",935, 630);
if(mousePressed){
puerto.write("R5");
}
}
if(info== 4){

text("D", 810, 500);
LETRA="D";
envi = LETRA +=num;
}
float cir = dist(mouseX,mouseY,170,625);
float cir2 = dist(mouseX,mouseY,340,625);
float cir3 = dist(mouseX,mouseY,510,625);
if(cir<50){
 fill(255);
 ellipse(170, 625, 100, 100);
 fill(0,0,100);
 text("1",170,635);
 if(mousePressed){
 cam=1;  
 }
}
if(cir2<50){
 fill(255);
 ellipse(340, 625, 100, 100);
 fill(0,0,100);
 text("2",340,635);
 if(mousePressed){
 cam=2;  
 }
}
if(cir3<50){
 fill(255);
 ellipse(510, 625, 100, 100);
 fill(0,0,100);
 text("3",510,635);
 if(mousePressed){
 cam=3;  
 }
}
}
