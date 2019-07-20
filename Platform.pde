class Platform{
  float x,y,w,h,speed,direction,speed2,superspeed;
  Platform(float xpos, float ypos, float widthp, float heightp){
    x = xpos; 
    y = ypos;
    w = widthp;
    h = heightp; 
    speed = 2.8;
    speed2 = 2;
    direction = 1;
    superspeed = 4.4;
}
  void display(){
    fill(255,0,0);
    rect(x,y,w,h);
    image(platform,x-2,y-3,50,50);
  }
  void move(){
     x = x+(speed*direction);
      if(x<90 || x>660){
        direction *= -1;
      }
   }
   void move2(){
     if(y<300){
     y = y+(speed2*direction);
   }}
   void move3(){
     x = x+(superspeed*direction);
     if(x<280 || x>380){
       direction *= -1;
      }
   
   }
}