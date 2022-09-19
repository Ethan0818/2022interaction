void setup(){
  size(500,500);
  PFont font= createFont("標楷體",35);
  textFont(font);
  myShuffle();
  String[]flower ={"黑桃","紅心","方塊","梅花"};//陣列;
  face1 = flower[int(random(4))]+int(random(13)+1);
  face2 = flower[int(random(4))]+int(random(13)+1);
  face3 = flower[int(random(4))]+int(random(13)+1);
  face4 = flower[int(random(4))]+int(random(13)+1);
  //=取整數0~12,所以再+1
}//洗牌英文:shuffle
void myShuffle(){
  String[]flower ={"黑桃","紅心","方塊","梅花"};//陣列;
  face1 = flower[int(random(4))]+int(random(13)+1);
  face2 = flower[int(random(4))]+int(random(13)+1);
  face3 = flower[int(random(4))]+int(random(13)+1);
  face4 = flower[int(random(4))]+int(random(13)+1);
}
void mousePressed(){
  myShuffle();
}
String face1,face2,face3,face4;
void draw(){
  drawPokerCard(100,100,face1);
  drawPokerCard(130,150,face2);
  drawPokerCard(160,200,face3);
  drawPokerCard(190,250,face4);
}//四種花色:黑桃,紅心,方塊,梅花
void drawPokerCard(int x ,int y,String face ){
  int W=25;
  fill(255);
  rect(x-W/2,y-W/2,150+W,250+W,20);
  fill(#03F000);
  rect(x,y,150,250,20);
  //fill(0);
  if(face.indexOf("黑桃")== -1 && face.indexOf("梅花")== -1) fill(#ff0000);
  else fill(0);
  textSize(35);
  text(face,x,y+35);
}
