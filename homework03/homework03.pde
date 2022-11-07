int x = 100;
int y = 100;  //靶芯初始坐標
float bird_x = 50;
float bird_y = 100;  //鳥初始坐標
float bomb_x = 500;
float bomb_y = 300;  //炸弹初始坐標

int a = 0;  //初始分数
int b;
int c = 600;
PImage tree;
PImage bird;
PImage hand;
PImage bomb;
SoundFile sound1;
//, sound2, sound3;//程式存檔,拉音樂進來
void setup() {
  size(612 , 608);
  tree = loadImage("tree.jpg");
  bird = loadImage("bird.png");
  hand = loadImage("hand.png");
  bomb = loadImage("bomb.png");
  PFont font = createFont("標楷體", 90);
  textAlign(CENTER, CENTER);
  textSize(25);
  sound1 = new SoundFile(this,"goal.mp3");
  //sound2 = new SoundFile(this,"Intro Song_Final.mp3");
  //sound1.play();
}

void draw() {
  frameRate(20);  //運行幀數
  background(tree);
  move();  //定義鍵的控制按鍵
  image(hand, x, y);
  image(bird, bird_x, bird_y);
  image(bomb, bomb_x, bomb_y);
  over();
  font();
  if (sqrt((bird_x - x)*(bird_x - x)+(bird_y - y)*(bird_y - y)) < 25) {
    bird();
    bomb();
    a += 20;  //計算靶心與鳥的距離判斷觸碰鳥得分
    sound1.play();
    sound1.stop();
  }
  if (sqrt((bomb_x - x)*(bomb_x - x)+(bomb_y - y)*(bomb_y - y)) < 25) {
    bird();
    bomb();
    a -= 40;  //計算靶心與炸彈的距離判斷觸碰炸彈扣分
  }
}

void move() {
  if (keyPressed) {
    if (key == 'a' && x != 0) {
      x -= 10;
    }
    if (key == 'd' && x != 600) {
      x += 10;
    }
    if (key == 'w' && y != 0) {
      y -= 10;
    }
    if (key == 's' && y != 600) {
      y += 10;
    }
    if (key == 'q') {
      exit();
    }
  }
}

void bird() {
  bird_x = random(50, 412);
  bird_y = random(50, 408);  //隨機刷新鳥的位置
}

void bomb() {
  bomb_x = random(50, 412);
  bomb_y = random(50, 408);  //隨機刷新炸彈的位置
}

void font() {
  fill(0);
  text(a, 25, 50);
  text(b, 550, 50);  //顯示得分和倒數計時
}

void over() {
  c -= 1;
  b = c/20;  //計時
  if (c == 0) {
    fill(#10B293);
    noStroke();
    rect(100, 510, 375, 70);

    fill(#FF030B);
    String s = "your score is";
    text(s, 180, 540);
    text(a, 450, 540);  //顯示得分界面
    stop();
  }
}
