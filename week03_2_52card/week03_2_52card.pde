void setup(){
  size(700,700);//視窗大小.
}
void draw(){
  background(#FFFFF2);
  for(int i=0; i<52; i++){
    int x=(i%10)*60;
    int y=(i/10)*120;
    rect(x, y, 60, 120);
  }
}
