void setup(){
  size(500,500);
}
int W=25;
void draw(){
  drawPokerCard(100,100,"S4");
  drawPokerCard(130,150,"H3");
  drawPokerCard(160,200,"D5");
  drawPokerCard(190,250,"CJ");
}//四種花色:黑桃,紅心,方塊,梅花
void drawPokerCard(int x ,int y,String face ){
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W,20);
  fill(#03F000);
  rect(x,y,150,250,20);
  fill(0);
  textSize(35);
  text(face,x,y+35);
}
