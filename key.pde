class Key{
  float x,y,w,h,speed,direction;
  boolean disappear;
  Key(float xpos, float ypos, float widthp, float heightp){
    x = xpos; 
    y = ypos;
    w = widthp;
    h = heightp; 
    disappear = false;
  }
   void display(){
     if(disappear == false){
    fill(255,255,0);
    ellipse(x+8,y+8,w,h);
     }
   //void display2(){
     //if(disappear == false){
    //fill(255,255,0);
    //ellipse(x+8,y+8,w,h);
    
    // }
    
  }
}