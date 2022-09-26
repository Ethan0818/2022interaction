void setup(){
  size(500,500);
}
float x=250,y=250;//變數(位置)精細
float  vx = 5.0 ,vy = -3.5;
void draw(){
  background(#FFFFF2);//背景,去殘影
  int boardX = mouseX;
  rect(boardX, 470, 150, 20);//控制的板子
  ellipse(x,y,10,10);//橢圓
  x = x + vx;
  y = y + vy;
  if( x > 500 ) vx = -vx;
  if( y < 0 ) vy = -vy;
  if( x < 0) vx = -vx;
  if( y > 470 && x>boardX && x<boardX+150) vy = -vy;
}
