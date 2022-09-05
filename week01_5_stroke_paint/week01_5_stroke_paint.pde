void setup(){
  size(500,500);//背景;
  stroke(255,0,0);//筆觸紅色;
}
void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}
void keyPressed(){
  if( key=='1') stroke(#F50A0A);
  if( key=='2') stroke(#F25607);
  if( key=='3') stroke(#F5E900);
  if( key=='4') stroke(#00FC80);
  if( key=='5') stroke(#032EFC);
}
