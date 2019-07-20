class Portal{
  float x,y,w,h,yspeed,ydirection,xrspeed,xrdirection,xr,xr2direction,xr2;
  boolean fly = false;
  boolean rectmove = false;
  Portal(float xpos, float ypos, float pwidth, float pheight,float Yspeed){
    x = xpos; 
    y = ypos;
    w = pwidth;
    h = pheight;
    yspeed = Yspeed;
    ydirection = -1;
    xr = 0;
    xrspeed=8;
    xrdirection=1;
    xr2 = 800;
    xr2direction = -1;
}
   void display(){
    fill(255,0,0);
    //rect(x,y,w,h);
    image(rocket,x,y,w,h);
    if(t.fly==true){
      image(Potion1,x+15,y+7,15,15);
    }
  }
  void display2(){
    if(keycounter==2){
    fill(255,0,0);
    //rect(x,y,w,h);
    image(rocket,x,y,w,h);
    if(t2.fly==true){
      image(Potion1,x+15,y+7,15,15);
    }
    }
  }
  void display3(){
    fill(255,0,0);
    //rect(x,y,w,h);
    image(rocket,x,y,w,h);
    if(t3.fly==true){
      image(Potion1,x+15,y+7,15,15);
    }
  }
  void move(){
    if(t.fly==true){
      y = y+(yspeed*ydirection);
    }
  }
  void move2(){
    if(t2.fly==true){
      y = y+(yspeed*ydirection);
    }
  }
  void move3(){
    if(t3.fly==true){
      y = y+(yspeed*ydirection);
    }
  }
  void finish(){
    if(y<-50){
    rectmove=true;
  }
}
  void transition(){
    fill(0);
    rect(0,0,xr,height);
    xr = xr+(xrspeed*xrdirection);
    if(xr>800){
      gamestate = 6;
    }
    if(xr>900){
      xrdirection *= -1;
    }
  }
  void transition_level_two(){
    fill(0);
    rect(0,0,xr,height);
    xr = xr+(xrspeed*xrdirection);
    if(xr>800){
      gamestate = 7;
    }
    if(xr>900){
      xrdirection *= -1;
    }
  }
  void transition_level_three(){
    fill(0);
    rect(0,0,xr,height);
    xr = xr+(xrspeed*xrdirection);
    if(xr>800){
      gamestate = 8;
    }
    if(xr>900){
      xrdirection *= -1;
    }
  }
   void transition2(){
     fill(0);
     rect(0,0,xr2,height);
     xr = xr+(xrspeed*xr2direction);
   }
}