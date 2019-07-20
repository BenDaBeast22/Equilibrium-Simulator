class Enemy{
  float x,y,w,h,yspeed,ydirection,superspeed,smallsuperspeed;
  Enemy(float expos, float eypos, float ewidth, float eheight,float espeed){
    x = expos;
    y = eypos;
    w = ewidth;
    h = eheight;
    yspeed = espeed;
    ydirection = 1;
    superspeed = 7;
    smallsuperspeed = 4.4;
  }
  void display(){
    fill(30,144,255);
    stroke(0);
    //rect(x,y,w,h);
    image(light,x-14,y-17,50,50);
  }
  void display2(){
    fill(30,144,255);
    stroke(0);
    //rect(x,y,w,h);
    image(light2,x-14,y-17,50,50);
  }
  void move(){
    y = y+(yspeed*ydirection);
    if(y<70 || y>190){
      ydirection *= -1;
    }
  }
  void move2(){
    y = y+(yspeed*ydirection);
    if(y<180 || y>300){
      ydirection *= -1;
   } 
  }
   void move3(){
    y = y+(yspeed*ydirection);
    if(y<350 || y>470){
      ydirection *= -1;
     }   
   }
   void move9(){
     y = y+(yspeed*ydirection);
      if(y<100 || y>220){
        ydirection *= -1;
      }
    }
    void move4(){
    y = y+(yspeed*ydirection);
    if(y<280 || y>450){
      ydirection *= -1;
    }
    }
    void move5(){
      x = x+(yspeed*ydirection);
      if(x<100 || x>700){
        ydirection *= -1;
      }
    }
    void move6(){
     y = y+(yspeed*ydirection);
      if(y<280 || y>450){
        ydirection *= -1;
      }
    }
    void move7(){
     y = y+(yspeed*ydirection);
      if(y<50 || y>300){
        ydirection *= -1;
      }
    }
    void move8(){
      x = x+(yspeed*ydirection);
      if(x<350 || x>460){
        ydirection *= -1;
      }
    }
    void move10(){
      y = y+(superspeed*ydirection);
      if(y<90 || y>380){
        ydirection *= -1;
      }
    }
    void move11(){
      y = y+(smallsuperspeed*ydirection);
      if(y<340 || y>500){
        ydirection *= -1;
      }
    }
      
  
}