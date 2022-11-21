//存檔,MP3拉進來,Ctrl-K看檔案
import processing.sound.*;//音樂功能
//使用外掛,要先把外掛裝起來!!!
SoundFile file1,file2,file3,file4;
void setup(){
  size(400,300);
  file1 = new SoundFile(this,"Angry.Birds.Song(0m40s).mp3");
  file2 = new SoundFile(this,"Boom_music.mp3");
  file3 = new SoundFile(this,"Bingo_music.mp3");
  file4 = new SoundFile(this,"Over_music.mp3");
  
  file1.play();
}
void draw(){

}
void mousePressed(){
  file2.play();
}
void keyPressed(){
  file3.play();
}
