class Sprite{
  float x,y,w,h;
  float speedX,speedY;
  boolean connected;
  float g;
  float direction;
  float speed;
  Sprite(float spriteposx,float spriteposy,float spritewidth,float spriteheight){
    x = spriteposx;
    y = spriteposy;
    w = spritewidth;
    h = spriteheight;
    
    speedX = 0;
    speedY = 0;
    direction = 1;
    speed = 2;
    connected = false;
    g=0.6;
  }
  void land(float destY){
    speedY = 0;
      connected = true;
      y = destY-h;
  }
  void update(){
    if (left){
      speedX = -2.8;
    }
    if(right){
      speedX = 2.8;
    }
    if(!left&&!right){
      speedX = 0;
    }
    else if(left&&right){
      speedX=0;
    }
    if(up && connected == true){
      speedY = -11.4;
      connected = false;
      
    }
    if(connected == false){
      speedY+=g;//gravity is applied when not touching platform
    }
    if(y>height){
      y=0;
      speedY=0;
    }
    x+= speedX;
    y+= speedY;
   }
   void boundary(){
     if(x<0){
       x=0;
     }
     else if(x>782){
       x=782;
     }
   }
   void display(){
     stroke(0);
    fill(250,0,0);
    //rect(x,y,w,h);
    image(Potion1,x+0.7,y,23,23);
  }
   void pmove(){
    if(pconnected==true){
      speedX = speedX+(speed*direction);
      if(x<110 || x>640){
        direction *= -1;
      }
    }
  }
  void respawn(){
    x=350;
    y=540;
    lifecounter=lifecounter+1;
    deathcounter = deathcounter+1;
  }
  void respawn2(){
    x=400;
    y=430;
    lifecounter=lifecounter+1;
    deathcounter = deathcounter+1;
    keycounter = 0;
    k.disappear=false;
    k2.disappear=false;
}
  void respawn3(){
    x=55;
    y=100;
    lifecounter=lifecounter+1;
    deathcounter = deathcounter+1;
  }
}

    