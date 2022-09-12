void setup(){
  size(500,500);
}
int W=25;
void draw(){
  drawCard(100,100);
  drawCard(120,120);
  drawCard(140,140);
}
void drawCard(int x ,int y ){
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W,20);
  fill(#03F000);
  rect(x,y,150,250,20);
}
