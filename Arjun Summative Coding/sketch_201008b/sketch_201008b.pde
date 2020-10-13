int AniScreen = 0;
Ball[] ball;


void setup(){
 size(600, 600);

}  


void draw() {
  if (AniScreen == 0) {  //if aniscreen = 0 which happens when you press the start screen sends you to void screen 
    Screen();
  } else if (AniScreen == 1) { //this sends you to void aniscreen after your press mou
    AniScreen();
  }
}
void Screen() {
    size(600, 600);
    background(0, 0, 0);
    textAlign(CENTER);
    fill(255, 255, 255);
    text("Click to start", 300, 300);
      ball = new Ball[10];
  for ( int i = 0; i < ball.length; i++){
    ball[i] = new Ball();
  }
}
void AniScreen() {
  background(0, 55, 55);
  background(155, 0, 0);
  for( int i = 0; i < ball.length; i++){
    ball[i].display();
  }
  }
 
void mousePressed() {
  if (AniScreen==0) { 
    startAni();
  }
}
void startAni() {
  AniScreen=1;
}
