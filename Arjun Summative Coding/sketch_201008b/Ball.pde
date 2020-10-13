class Ball{
  float x; //ball's x positsion
  float y; //ball's y position
  float diamter; //ball's diamter
  float Vx; //ball's x velocity
  float Vy; //ball's y velocity
  
  Ball(){
    x = random(width);  //random x position
    y = random(height); //random y position
    diamter = 30;       //diamter of 30
    Vx = random(-5, 5); //random x velocity between -5 and 5
    Vy = random(-5, 5); //random y velocity between -5 and 5
  }
  
  
  void display(){  //displays the ball
    update(); //updates the ball
    circle(x,y,diamter); //makes the ball a circle
  }
  
  
  void update(){   //this updates the ball's location and the movemnets when hitting the side
    x += Vx;
    y += Vy;
    if( x > width || x < 0){
      Vx *= -1;
  }
    if( y > width || x < 0){
      Vy *= -1;
    }    
  }
} 
