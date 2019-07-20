//Images
PImage potion;
PImage red; //Red solution used in simulation 2
PImage colourless;//colourless solution used in simulation 2
PImage co2;//carbon dioxide image used in sim 1
PImage NH3;//Amonnia image used in sim1
PImage chemist;
PImage heart;
PImage grass;
PImage platform;
PImage Potion1;
PImage light;
PImage rocket;
PImage menu;
PImage lava;
PImage light2;
PImage menustrawberry;
//Calling methods

int temp1 = 400;
int temp2 = 23;
int temp3 = 25;
int temp1r = 400;//Resets temperature for sim 1 when button is pressed
int temp2r = 23;//Resets temperature for sim 2 when button is pressed
int temp3r = 25;//Resets temperature for sim 3 when button is pressed
int press1 = 200;
int press2 = 100;
int press3 = 101;
int press1r = 200;//Resets pressure for sim 1 when button is pressed
int press2r = 100;//Resets pressure for sim 2 when button is pressed
int press3r = 101;//Resets pressure for sim 3 when button is pressed
int teq = 0;//Equilibrium for temperature shift direction
int peq = 0;//Equilibrium shift for pressure direction
int teq2 = 0;
int peq2 = 0;
int teq3 = 0;
int peq3 = 0;

int gamestate = 0;//Controls which screen is being displayed
Key k;
Key k2;
Enemy e;
Enemy e2;
Enemy e3;
Enemy e4;
Enemy e5;
Enemy e6;
Enemy e7;
Enemy e8;
Enemy e9;
Enemy e10;
Enemy e11;
Enemy e12;
Enemy e13;
Enemy e14;
Enemy e15;
Portal t;
Portal t2;
Portal t3;
Platform p;
Sprite s;
Sprite s2;
Sprite s3;
//Platforms Arrays
Platform [] platforms;
Platform [] platforms2;
Platform [] platforms3;
//Global variables
float x = 250;
float y = 250;
float speed = 2.5;
boolean left;
boolean right;
boolean up;
boolean down;

int lifecounter = 1;
int keycounter = 0;
boolean platfall = false;
boolean pconnected=false;
int deathcounter = 0;

void setup(){
  size(800,600);
  background(0);
  smooth();
  cursor(HAND);
  
   e = new Enemy(532,90,20,20,1.8);
  e2 = new Enemy(255,200,20,20,1.8);
  e3 = new Enemy(255,370,20,20,1.8);
  e11 = new Enemy(365,120,20,20,1.8);
  
  //level two enemies
  e4 = new Enemy(535,370,20,20,2);
  e5 = new Enemy(275,370,20,20,2);
  e6 = new Enemy(-100,575,950,80,2);//lava
  e7 =  new Enemy(95,50,20,20,2.4);
  e8 =  new Enemy(705,50,20,20,2.4); 
  e9 =  new Enemy(100,280,20,20,5); 
  e10 = new Enemy(350,120,20,20,5); 
  //level three enemies
  e12 = new Enemy(185,100,20,20,5); 
  e13 = new Enemy(205,100,20,20,5);
  e14 = new Enemy(550,480,20,20,5);
  e15 = new Enemy(450,480,20,20,5);
  //rocket ships
  t = new Portal(650,100,45,45,2);
  t2 = new Portal(391,20,45,45,2);
  t3 = new Portal(693,440,45,45,2);
  //level two keys
  k = new Key(26,105,15,15);
  k2 = new Key(755,105,15,15);
  
  //All level sprites
  //p = new Platform(300,500,180,20);
  s = new Sprite(350,540,21,23);
  s2 = new Sprite(400,460,21,23);
  s3 = new Sprite(55,100,21,23);
  
  //Level one platforms
  platforms = new Platform[7];
  platforms[0]=new Platform(0,560,800,10);//ground platform
  platforms[1]=new Platform(302,463,41,1);//platform 1
  platforms[2]=new Platform(185,400,41,1);
  platforms[3]=new Platform(185,293,41,1);
  platforms[4]=new Platform(302,210,41,1);
  platforms[5]=new Platform(410,140,82,1);
  platforms[6]=new Platform(585,140,170,10);
  
  //Level Two Platforms
  platforms2 = new Platform[15];
  platforms2[0]=new Platform(0,1560,800,10);//ground platform
  platforms2[1]=new Platform(390,460,41,1);
  platforms2[2]=new Platform(520,410,41,1);
  platforms2[3]=new Platform(520,330,41,1);
  platforms2[4]=new Platform(390,260,41,1);
  platforms2[5]=new Platform(260,410,41,1);
  platforms2[6]=new Platform(260,330,41,1);
  platforms2[7]=new Platform(110,170,41,1);
  platforms2[8]=new Platform(10,120,41,1);
  platforms2[9]=new Platform(740,120,41,1);
  platforms2[10]=new Platform(390,60,41,1);
  platforms2[11]=new Platform(433,60,41,1);
  platforms2[12]=new Platform(347,60,41,1);
  platforms2[13]=new Platform(620,310,41,1);
  platforms2[14]=new Platform(160,310,41,1);
  
  //Level 3 Platforms
  platforms3 = new Platform[11];
  platforms3[0]=new Platform(0,130,41,1);
  platforms3[1]=new Platform(43,130,41,1);
  platforms3[2]=new Platform(86,130,41,1);
  platforms3[3]=new Platform(586,480,41,1);
  platforms3[4]=new Platform(629,480,41,1);
  platforms3[5]=new Platform(672,480,41,1);
  platforms3[6]=new Platform(715,480,41,1);
  platforms3[7]=new Platform(758,480,41,1);
  platforms3[8]=new Platform(300,340,41,1);
  platforms3[9]=new Platform(380,500,41,1);
  platforms3[10]=new Platform(490,430,41,1);
  
  grass = loadImage("grass.png");
  heart = loadImage("heart.png");
  platform = loadImage("platform1.png");
  Potion1 = loadImage("Potion1.png");
  light = loadImage("light.png");
  rocket = loadImage("rocket.png");
  menu = loadImage("menu.png");
  lava = loadImage("lava.png");
  light2 = loadImage("light2.png");
  menustrawberry = loadImage("menustrawberry.png");
  
  
  potion = loadImage("potion.jpg");
  red = loadImage("red.jpg");
  colourless = loadImage("colourless.jpg");
  co2 = loadImage("carbon dioxide.jpeg");
  NH3 = loadImage("Ammonia.jpg");
  chemist = loadImage("mad chem.jpeg"); 
  left = false;
  right = false;
  up = false;
  down = false;
  
}

void draw(){
  if(gamestate == 0){
    menu();
  }
  if(gamestate == 1){
    simulation();  
  }
  if(gamestate == 2){
    simulation2();
  }
  if(gamestate == -1){
    choiceScreen();
  }
  if(gamestate == 3){
    simulation3();  
  }
  if(gamestate == -2){
    instructions();
  }
   if(gamestate == 5){
    level_one();
  }
   if(gamestate == 6){
    level_two();
  }
  if(gamestate == 7){
    level_three();
  }
}

void level_one(){
  background(135,206,250);
  s.update();
  if(t.fly==false){
    s.display();
  }
  e.move();
  e.display();
  e2.display();
  e2.move2();
  e3.display();
  e3.move3();
  e11.move9();
  e11.display();
  t.display();
  t.move();
  t.finish();
  s.boundary();
  //fill(0);
  //textSize(20);
  //text("Level 1/3",10,25);
  //p.display();
  //image(heart,10,5,30,30);
  //image(heart,45,5,30,30);
  //image(heart,80,5,30,30);
  //Platform Images
  image(grass,-100,548,950,80);//ground
  image(platform,407.5,137,50,50);//platform 5
  image(platform,449.5,137,50,50);//platform 5
  image(platform,583,137,50,50);//platform 6
  image(platform,583+43,137,50,50);//platform 6
  image(platform,583+43*2,137,50,50);//platform 6
  image(platform,583+43*3,137,50,50);//platform 6 
  
  platforms[1].display();
  platforms[2].display();
  platforms[3].display();
  platforms[4].display();
  
  fill(255);
  textSize(20);
  text("Deaths: "+deathcounter,20,30);
  text("level 1/3",700,30);
  
  //platforms[5].display();
  //platforms[6].display();
  //for(int i = 0; i<platforms.length; i++){
  //  platforms[i].display();
  //}
   if(collision(s,t)){
    t.fly = true;
  }
  for(int i = 0;i<platforms.length; i++){
    if(collision(s,platforms[i])){
    s.land(platforms[i].y);
    break;
  }else{
    s.connected = false;
  }
  }
  if(collision(s,e)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
   if(collision(s,e2)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
   if(collision(s,e3)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
   if(collision(s,e11)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
  if(lifecounter<=0){
    s.respawn();
  }
  if(t.rectmove==true){
    t.transition();
  }
}
void level_two(){
  stroke(0);
  background(135,206,250);
  if(t2.fly==false){
    s2.display();
  }
  t2.display2();
  image(lava,-100,548,950,80);//lava picture
  s2.update();
  s2.boundary();
  //display platforms
  for(int i = 1; i<platforms2.length; i++){
    platforms2[i].display();
  }
  platforms2[7].move();
  e4.display();
  e4.move4();
  e5.display();
  e7.display();
  e7.move7();
  e8.display();
  e8.move7();
  e9.display2();
  e9.move5();
  e10.display2();
  e10.move8();
  e5.move6();
  k.display();
  k2.display();
  s2.pmove();
  t.transition();
  t2.move2();
  t2.finish();
  //text("keycounter"+keycounter,80,80);
  fill(255);
  textSize(20);
  text("Deaths: "+deathcounter,20,30);
  text("level 2/3",700,30);
  
  //moving platform
  if(platfall==true){
    platforms2[9].move2();
  }
  
  //Collisions
  
  //Platform Collision
  for(int i = 0;i<platforms2.length; i++){
    if(collision(s2,platforms2[i])){
      s2.land(platforms2[i].y);
      break;
    }else{
      s2.connected = false;
    }
}
  if(collision(s2,t2)&&(keycounter==2)){//key collision
       t2.fly = true;
  }
  if(t2.rectmove==true){
    t2.transition_level_two();
  }
  //enemy collisions
  if(collision(s2,e4)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
  if(collision(s2,e5)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
  //lava collision
  if(collision(s2,e6)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
  if(collision(s2,e7)||collision(s2,e8)||collision(s2,e9)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
    if(collision(s2,e10)){
    fill(255,0,0,100);
    rect(0,0,width,height);
    lifecounter=lifecounter-1;
  }
  //respawn after die
   if(lifecounter<=0){
    s2.respawn2();
   }
   if(k.disappear==false){
     if(collision(s2,k)){
       k.disappear = true;
       keycounter=keycounter+1;
     }
   }
   if(k2.disappear==false){
     if(collision(s2,k2)){
       k2.disappear = true;
       keycounter=keycounter+1;
     }
   }
}

void level_three(){
  stroke(0);
  background(135,206,250);
  if(t3.fly==false){
    s3.display();
  }
  s3.update();
  s3.boundary();
  t3.display3();
  t3.move3();
  t3.finish();
  e6.display();
  e12.display();
  e12.move10();
  e13.display();
  e13.move10();
  e14.display();
  e14.move11();
  e15.display();
  e15.move11();
  platforms3[8].move3();
  
  image(lava,-100,548,950,80);//lava picture
  fill(255);
  textSize(20);
  text("Deaths: "+deathcounter,20,30);
  text("level 3/3",700,30);
  //rocket collision
  if(collision(s3,t3)){
    t3.fly = true;
  }
  //display platforms
  for(int i = 0; i<platforms3.length; i++){
    platforms3[i].display();
  }
  //Platform collisions
  for(int i = 0;i<platforms3.length; i++){
    if(collision(s3,platforms3[i])){
      s3.land(platforms3[i].y);
      break;
    }else{
      s3.connected = false;
    }
}
   //enemy collisions
   if(collision(s3,e6)){//lava collision
     fill(255,0,0,100);
     rect(0,0,width,height);
     lifecounter=lifecounter-1;
  }
  if(collision(s3,e12)){
     fill(255,0,0,100);
     rect(0,0,width,height);
     lifecounter=lifecounter-1;
  }
  if(collision(s3,e13)){
     fill(255,0,0,100);
     rect(0,0,width,height);
     lifecounter=lifecounter-1;
  }
  if(collision(s3,e14)){
     fill(255,0,0,100);
     rect(0,0,width,height);
     lifecounter=lifecounter-1;
  }
  if(collision(s3,e15)){
     fill(255,0,0,100);
     rect(0,0,width,height);
     lifecounter=lifecounter-1;
  }
  if(t3.rectmove==true){
    t3.transition_level_three();
  }
  if(lifecounter<=0){//minus one life
    s3.respawn3();
  }

}

boolean collision(Sprite c1, Enemy c2){
  //x distance apart 
  float distancex = (c1.x + c1.w/2) - (c2.x + c2.w/2);
  //y distance apart 
  float distancey = (c1.y + c1.h/2) - (c2.y + c2.h/2);
  //combined half widths
  float halfwidth = c1.w/2 +c2.w/2;
  //combined half heights
  float halfheight = c1.h/2 + c2.h/2;
  //check x collisions
  if(abs(distancex)<halfwidth){
    if(abs(distancey) < halfheight){
      return true;
    }
  }
  return false;
}
boolean collision(Sprite c1, Key c2){
  //x distance apart 
  float distancex = (c1.x + c1.w/2) - (c2.x + c2.w/2);
  //y distance apart 
  float distancey = (c1.y + c1.h/2) - (c2.y + c2.h/2);
  //combined half widths
  float halfwidth = c1.w/2 +c2.w/2;
  //combined half heights
  float halfheight = c1.h/2 + c2.h/2;
  //check x collisions
  if(abs(distancex)<halfwidth){
    if(abs(distancey) < halfheight){
      return true;
    }
  }
  return false;
}
boolean collision(Sprite c1, Platform c2){
  //x distance apart 
  float distancex = (c1.x + c1.w/2) - (c2.x + c2.w/2);
  //y distance apart 
  float distancey = (c1.y + c1.h/2) - (c2.y + c2.h/2);
  //combined half widths
  float halfwidth = c1.w/2 +c2.w/2;
  //combined half heights
  float halfheight = c1.h/2 + c2.h/2;
  //check x collisions
  if(abs(distancex)<halfwidth){
    if(abs(distancey) < halfheight){
      return true;
    }
  }
  return false;
}
boolean collision(Sprite c1, Portal c2){
  //x distance apart 
  float distancex = (c1.x + c1.w/2) - (c2.x + c2.w/2);
  //y distance apart 
  float distancey = (c1.y + c1.h/2) - (c2.y + c2.h/2);
  //combined half widths
  float halfwidth = c1.w/2 +c2.w/2;
  //combined half heights
  float halfheight = c1.h/2 + c2.h/2;
  //check x collisions
  if(abs(distancex)<halfwidth){
    if(abs(distancey) < halfheight){
      return true;
    }
  }
  return false;
}

void menu(){
  stroke(255);
  background(221,160,221);
  textSize(50);
  text("Equilibrium Simulator",140,120);
  stroke(255);
  textSize(40);
  text("Ben and Rehan",250,200);
  image(potion,285,250,180,180);
  
  stroke(255);
  fill(255,0,255); 
  rect(50,525,175,40);
  stroke(0);
  fill(255);
  textSize(30);
  text("Mini Game!",60,555);
  if(mousePressed&&((mouseX>= 50) && (mouseX<=225)&&(mouseY>=525)&&(mouseY<=565))){
        gamestate =5;
  }
  if((mouseX>= 50) && (mouseX<=225)&&(mouseY>=525)&&(mouseY<=565)){
     stroke(255);
     fill(255,0,127);
     rect(50,525,175,40);
     stroke(0);
     fill(255);
     textSize(30);
     text("Mini Game!",60,555);
  }
  
  //Begin Button
  fill(255,0,255);
  rect(320,450,115,55);
  stroke(0);
  fill(255);
  textSize(35);
  stroke(255);
  text("Begin",330,490);
  stroke(0);
  //Button Hitbox sends to simulation screen
  if(mousePressed&&((mouseX>= 320) && (mouseX<=435)&&(mouseY>=450)&&(mouseY<=505))){
        gamestate = -1;
  }
  //Button hitbox for colouring in Begin Button
  if((mouseX>= 320) && (mouseX<=435)&&(mouseY>=450)&&(mouseY<=505)){
     stroke(255);
     fill(234,0,127);
     rect(320,450,115,55);
     fill(255);
     text("Begin",330,490);
  }
  //Instructions
  fill(255,0,255);
  stroke(255);
  rect(270,520,220,55);
  stroke(0);
  fill(255);
  textSize(35);
  text("Instructions",280,560);
  if(mousePressed&&((mouseX>= 270) && (mouseX<=490)&&(mouseY>=520)&&(mouseY<=575))){
        gamestate = -2;
  }
  //Button hitbox for colouring in Begin Button
  if((mouseX>= 270) && (mouseX<=490)&&(mouseY>=520)&&(mouseY<=575)){
     stroke(255);
     fill(234,0,127);
     stroke(255);
     rect(270,520,220,55);
     stroke(0);
     fill(255);
     textSize(35);
     text("Instructions",280,560);
  }
    
}
public void menu2(){
      background(163,11,11);
      fill(255);
      textSize(55);
      text("Equilibrium Simulator",width/2-210,100);
      textSize(35);
      fill(255);
      text("Ben and Rehan",width/2-220,200);
      stroke(255);
      fill(255,204,0); 
      rect(225,415,75,40);
      stroke(0);
      fill(255);
      textSize(30);
      text("Play",235,445);
      //image(scientist, width/2-60,320,140,140);  
      stroke(255);
      fill(255,204,0); 
      rect(425,495,195,40);
      stroke(0);
      fill(255);
      text("Mini Game!",437,445);
     
      stroke(255);
      fill(255,204,0); 
      rect(320f,515.5f,190.5f,40f);
      stroke(110, 180, 212);
      fill(255);
      text("Instructions",330,545);
  
      
      if(mousePressed&&((mouseX>= 225) && (mouseX<=300)&&(mouseY>=415)&&(mouseY<=455))){
            gamestate =1;
      }
      if((mouseX>= 225) && (mouseX<=300)&&(mouseY>=415)&&(mouseY<=455)){
         stroke(255);
         fill(255,204,0); 
         rect(225,415,75,40);
         fill(0);
         text("Play",235,445);
      }
      if(mousePressed&&((mouseX>=425)&&(mouseX<=620)&&(mouseY>=415)&&(mouseY<=455))){
            gamestate = 5;
      }
       if((mouseX>=425)&&(mouseX<=620)&&(mouseY>=415)&&(mouseY<=455)){
         stroke(255);
         fill(255,204,0); 
         rect(425,415,195,40);
         fill(0);
         text("Mini Game!",437,445);
      }
      if(mousePressed&&((mouseX>=320)&&(mouseX<=510.5)&&(mouseY>=515.5)&&(mouseY<=555.5))){
        gamestate = -2; 
      }
      if((mouseX>=320)&&(mouseX<=510.5)&&(mouseY>=515.5)&&(mouseY<=555.5)){
         stroke(255);
         fill(255,204,0); 
         rect(320f,515.5f,190.5f,40f);
         fill(0);
         text("Instructions",330,545);
      }
    }

 void instructions(){
        background(135,206,250);
        textAlign(CENTER);
        stroke(0);
        fill(255);
        textSize(40);
        text("Instructions",width/2+10,height/2-200); //In order to increase the use the temperature of the reaction press the '+' button to increase the temperature and pressure"
        textSize(18);
        text("1. Choose Endothermic or Exothermic reaction",width/2,210);
        text("2. Adjust temperature and pressure to your liking",width/2,250);
        text("3. Equilibrium will now be displayed",width/2,290); 
        image(chemist,width/2-50,330,100,80);
     
       
        fill(51,153,255);//menu button
        rect(365,475,80,40);
        fill(0);
        text("Play",width/2+5,height/2+200);
        
        if(mousePressed&&((mouseX>= 365) && (mouseX<=445)&&(mouseY>=475)&&(mouseY<=515))){
              gamestate=0;
        }
        if((mouseX>= 365) && (mouseX<=445)&&(mouseY>=475)&&(mouseY<=515)){
           stroke(0);
           fill(102,255,178);
           rect(365,475,80,40);
           fill(0);
           text("Play",width/2+5,height/2+200);
           textAlign(LEFT);
        }
        
}
void simulation(){
  stroke(255);
  background(147,112,219);
  fill(255);
  textSize(40);
  text("Equilibrium of the Haber Process",80,60);
  textSize(26);
  text("Temperature Effect:",85,170);
  textSize(23);
  rect(295,80,237,30);
  fill(0,191,255);
  text("Exothermic Reaction",300,105);
  fill(255);
  textSize(28);
  
  if(teq == 0){ //equillibrium
    text("N₂(g) + 3H₂(g) <----> 2NH₃(g) + Energy",85,220); 
  }
  if(teq == 1){ //Shift to the right
    text("N₂(g) + 3H₂(g) ----> 2NH₃(g) + Energy",85,220);
  }
  if(teq == -1){
    text("N₂(g) + 3H₂(g) <---- 2NH₃(g) + Energy",85,220);
  }
  textSize(26);
  text("Pressure Effect:",85,310);
  textSize(28);
  if(peq == 0){ //equillibrium
    text("N₂(g) + 3H₂(g) <----> 2NH₃(g) + Energy",85,360); 
  }
  if(peq == 1){ //Shift to the right
    text("N₂(g) + 3H₂(g) ----> 2NH₃(g) + Energy",85,360);
  }
  if(peq == -1){
    text("N₂(g) + 3H₂(g) <---- 2NH₃(g) + Energy",85,360);
  }
  //Temperature Display
  stroke(255);
  fill(135,206,235);
  rect(90,450,270,75);
  fill(255);
  text("Temp",100,500);
  textSize(18);
  text("Starting Temperature: 400°C",90,570);
  if(temp1>400){
    teq = -1;
    textSize(22);
    fill(50,205,50);
    text("↑ Left",345,570);
    fill(255);
    textSize(20);
  }
  if(temp1<400){
    teq = 1;
    textSize(22);
    fill(255,0,0);
    text("↓ Right",345,570);
    image(NH3,660,160,95,100);
    fill(255);
    textSize(20);
  }
  if(temp1==400){
    teq = 0;
  }
   
  //Increase Tempertaure Button
  fill(30,144,255);
  rect(316,476,30,30);
  fill(255);
  textSize(30);
  text("+",319,500);
  
  if(mousePressed&&((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496))){
    temp1+=1;
  } 
  if((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496)){
    fill(50,205,50);
    rect(316,476,30,30);
    fill(255);
    text("+",319,500);
  } 
    
  //Decrease Temperature Button
  fill(30,144,255);
  rect(196,476,30,30);
  fill(255);
  text("-",202,500);
  
  if(mousePressed&&((mouseX>= 196) && (mouseX<=226)&&(mouseY>=476)&&(mouseY<=506))){
    temp1-=0.1;
  } 
  if((mouseX>= 196) && (mouseX<=226) && (mouseY>=476)&&(mouseY<=506)){
    fill(255,0,0);
    rect(196,476,30,30);
    fill(255);
    text("-",202,500);
  } 
  
  //Temperature icon Display (Degrees Celsius)
  rect(245,470,55,40);
  fill(0);
  textSize(17);
  text(temp1+"°C",246,495);
  fill(255);
  
  //Pressure Display
  fill(135,206,235);
  rect(430,450,270,75);
  fill(255);
  textSize(30);
  text("Press",440,500);
  textSize(19);
  text("Starting Pressure: 200ATM",430,570);
  if(press1>200){
    peq = 1;
    textSize(22);
    fill(50,205,50);
    text("↑ RIGHT",680,570);
    image(NH3,660,300,100,100);
    fill(255);
    textSize(20);
  }
  if(press1<200){
    peq = -1;
    textSize(22);
    fill(255,0,0);
    text("↓ Left",675,570);
    fill(255);
    textSize(20);
  }
  if(press1==200){
    peq = 0;
  }
  
  //Pressure Value Display(PA)
  rect(575,470,71,40);
  fill(0);
  textSize(17);
  text(press1+"ATM",576,495);
  fill(255);
  
  //Decrease Pressure Button
  fill(30,144,255);
  rect(536,476,30,30);
  fill(255);
  textSize(30);
  text("-",542,500);
  
  if(mousePressed&&((mouseX>= 536) && (mouseX<=566)&&(mouseY>=476)&&(mouseY<=506))){
    press1-=0.1;
  } 
  if((mouseX>= 536) && (mouseX<=566) && (mouseY>=476)&&(mouseY<=506)){
    fill(255,0,0);
    rect(536,476,30,30);
    fill(255);
    text("-",542,500);
  } 
  
  //Increase Pressure Button
  textSize(30);
  fill(30,144,255);
  rect(656,476,30,30);
  fill(255);
  text("+",659,500);
  
  if(mousePressed&&((mouseX>= 656) && (mouseX<=686)&&(mouseY>=476)&&(mouseY<=506))){
    press1+=1;
  } 
  if((mouseX>= 656) && (mouseX<=686) && (mouseY>=476)&&(mouseY<=506)){
    fill(50,205,50);
    rect(656,476,30,30);
    fill(255);
    text("+",659,500);
  }
  //reset button
   fill(255,0,0);
   rect(20,460,50,50);
   fill(255);
   text("R",35,495);
   
   if(mousePressed&&((mouseX>= 20) && (mouseX<=70)&&(mouseY>=460)&&(mouseY<=510))){
     temp1 = temp1r;
     press1 = press1r;
   } 
   if((mouseX>= 20) && (mouseX<=70) && (mouseY>=460)&&(mouseY<=510)){
     fill(205,92,92);
     rect(20,460,50,50);
     fill(255);
     text("R",35,495);
   }
   //Menu button
   fill(30,144,255);
   rect(725,495,65,30);
   fill(255);
   textSize(16);
   text("Back",734,516);
   
   if(mousePressed&&((mouseX>= 725) && (mouseX<=790)&&(mouseY>=495)&&(mouseY<=525))){
     gamestate = -1;
   } 
   if((mouseX>= 725) && (mouseX<=790) && (mouseY>=495)&&(mouseY<=525)){
     fill(30,144,255);
     rect(725,495,65,30);
     fill(255);
     textSize(16);
     text("Back",734,516);
     
   }
}
 void simulation2(){
   stroke(255);
   background(123,104,238);
   fill(255);
   textSize(34);
   text("Decompostion of Dinitrogen tetroxide",80,60);
   textSize(26);
   text("Temperature Effect:",85,150);
   textSize(23);
   rect(298,80,247,30);
   fill(0,191,255);
   text("Endothermic Reaction",300,105);
   fill(255);
   textSize(30);
  
   if(teq2 == 0){ //equillibrium
     text("N₂O₄(g) + energy <----> 2NO₂(g)",85,200); 
   }
   if(teq2 == 1){ //Shift to the right
     text("N₂O₄(g) + energy ----> 2NO₂(g)",85,200);
   }
   if(teq2 == -1){
     text("N₂O₄(g) + energy <---- 2NO₂(g)",85,200);
   }
   textSize(25);
   text("(colourless)",135,240);
   fill(128,0,0);
   text("(reddish brown)",435,240);
   fill(255);
   text("(colourless)",135,410);
   fill(128,0,0);
   text("(reddish brown)",435,410);
   fill(255);
   
   textSize(26);
   text("Pressure Effect:",85,310);
   textSize(30);
   if(peq2 == 0){ //equillibrium
     text("N₂O₄(g) + energy <----> 2NO₂(g)",85,360); 
   }
   if(peq2 == 1){ //Shift to the right
     text("N₂O₄(g) + energy ----> 2NO₂(g)",85,360);
   }
   if(peq2 == -1){
     text("N₂O₄(g) + energy <---- 2NO₂(g)",85,360);
   }
   //Temperature Display
   stroke(255);
   fill(135,206,235);
   rect(90,450,270,75);
   fill(255);
   text("Temp",100,500);
   textSize(18);
   text("Starting Temperature: 23°C",90,570);
   if(temp2>23){
     teq2 = 1;
     textSize(26);
     fill(50,205,50);
     text("↑ Right",335,570);
     image(red,650,160,100,80);
     fill(255);
     textSize(20);
   }
   if(temp2<23){
     teq2 = -1;
     textSize(26);
     fill(255,0,0);
     text("↓ Left",335,570);
     image(colourless,650,160,100,80);
     fill(255);
     textSize(20);
   }
   if(temp2==23){
     teq2 = 0;
   }
   
   //Increase Tempertaure Button
   fill(30,144,255);
   rect(316,476,30,30);
   fill(255);
   textSize(30);
   text("+",319,500);
  
   if(mousePressed&&((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496))){
     temp2+=1;
   } 
   if((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496)){
     fill(50,205,50);
     rect(316,476,30,30);
     fill(255);
     text("+",319,500);
   } 
    
   //Decrease Temperature Button
   fill(30,144,255);
   rect(196,476,30,30);
   fill(255);
   text("-",202,500);
  
   if(mousePressed&&((mouseX>= 196) && (mouseX<=226)&&(mouseY>=476)&&(mouseY<=506))){
     temp2-=1;
   } 
   if((mouseX>= 196) && (mouseX<=226) && (mouseY>=476)&&(mouseY<=506)){
     fill(255,0,0);
     rect(196,476,30,30);
     fill(255);
     text("-",202,500);
   } 
  
   //Temperature icon Display (Degrees Celsius)
   rect(250,470,45,40);
   fill(0);
   textSize(17);
   text(temp2+"°C",251,495);
   fill(255);
  
   //Pressure Display
   fill(135,206,235);
   rect(430,450,280,75);
   fill(255);
   textSize(30);
   text("Press",440,500);
   textSize(19);
   text("Starting Pressure: 100kPA",430,570);
   if(press2>100){
     peq2 = -1;
     textSize(26);
     fill(50,205,50);
     text("↑ Left",670,570);
     image(colourless,650,300,100,80);
     fill(255);
     textSize(20);
   }
   if(press2<100){
     peq2 = 1;
     textSize(26);
     fill(255,0,0);
     text("↓ RIGHT",670,570);
     image(red,650,300,100,80);
     fill(255);
     textSize(20);
   }
   if(press2==100){
     peq2 = 0;
   }
  
   //Pressure Value Display(PA)
   rect(575,470,68,40);
   fill(0);
   textSize(17);
   text(press2+"kPA",578,495);
   fill(255);
  
   //Decrease Pressure Button
   fill(30,144,255);
   rect(536,476,30,30);
   fill(255);
   textSize(30);
   text("-",542,500);
  
   if(mousePressed&&((mouseX>= 536) && (mouseX<=566)&&(mouseY>=476)&&(mouseY<=506))){
     press2-=0.1;
   } 
   if((mouseX>= 536) && (mouseX<=566) && (mouseY>=476)&&(mouseY<=506)){
     fill(255,0,0);
     rect(536,476,30,30);
     fill(255);
     text("-",542,500);
   } 
  
   //Increase Pressure Button
   textSize(30);
   fill(30,144,255);
   rect(656,476,30,30);
   fill(255);
   text("+",659,500);
  
   if(mousePressed&&((mouseX>= 656) && (mouseX<=686)&&(mouseY>=476)&&(mouseY<=506))){
     press2+=1;
   } 
   if((mouseX>= 656) && (mouseX<=686) && (mouseY>=476)&&(mouseY<=506)){
     fill(50,205,50);
     rect(656,476,30,30);
     fill(255);
     text("+",659,500);
   }
   //reset button
   fill(220,20,60);
   rect(20,460,50,50);
   fill(255);
   text("R",35,495);
   
   if(mousePressed&&((mouseX>= 20) && (mouseX<=70)&&(mouseY>=460)&&(mouseY<=510))){
     temp2 = temp2r;
     press2 = press2r;
   } 
   if((mouseX>= 20) && (mouseX<=70) && (mouseY>=460)&&(mouseY<=510)){
     fill(205,92,92);
     rect(20,460,50,50);
     fill(255);
     text("R",35,495);
   }
   //Menu button
   fill(30,144,255);
   rect(725,495,65,30);
   fill(255);
   textSize(16);
   text("Back",734,516);
   
   if(mousePressed&&((mouseX>= 725) && (mouseX<=790)&&(mouseY>=495)&&(mouseY<=525))){
     gamestate = -1;
   } 
   if((mouseX>= 725) && (mouseX<=790) && (mouseY>=495)&&(mouseY<=525)){
     fill(30,144,255);
     rect(725,495,65,30);
     fill(255);
     textSize(16);
     text("Back",734,516);
     
   }
   
}
void simulation3(){
  stroke(255);
  background(147,112,219);
  fill(255);
  textSize(40);
  text("Synthesis of Carbon and Oxygen",80,60);
  textSize(26);
  text("Temperature Effect:",85,170);
  textSize(23);
  rect(295,80,237,30);
  fill(0,191,255);
  text("Exothermic Reaction",300,105);
  fill(255);
  textSize(28);
  
  if(teq3 == 0){ //equillibrium
    text("2C(s) + O₂(g) <----> 2CO(g) + Energy",85,220); 
  }
  if(teq3 == 1){ //Shift to the right
    text("2C(s) + O₂(g) ----> 2CO(g) + Energy",85,220);
  }
  if(teq3 == -1){
    text("2C(s) + O₂(g) <---- 2CO(g) + Energy",85,220);
  }
  textSize(26);
  text("Pressure Effect:",85,310);
  textSize(28);
  if(peq3 == 0){ //equillibrium
    text("2C(s) + O₂(g) <----> 2CO(g) + Energy",85,360); 
  }
  if(peq3 == 1){ //Shift to the right
    text("2C(s) + O₂(g) ----> 2CO(g) + Energy",85,360);
  }
  if(peq3 == -1){ //Shift Left
    text("2C(s) + O₂(g) <---- 2CO(g) + Energy",85,360);
  }
  //Temperature Display
  stroke(255);
  fill(135,206,235);
  rect(90,450,270,75);
  fill(255);
  text("Temp",100,500);
  textSize(19);
  text("Starting Temperature: 25°C",90,570);
  if(temp3>25){
    teq3 = -1;
    textSize(24);
    fill(50,205,50);
    text("↑ Left",350,570);
    fill(255);
    textSize(20);
  }
  if(temp3<25){
    teq3 = 1;
    textSize(23);
    fill(255,0,0);
    text("↓ Right",346,570);
    image(co2,650,160,80,100);
    fill(255);
    textSize(20);
  }
  if(temp3==25){
    teq3 = 0;
  }
   
  //Increase Tempertaure Button
  fill(30,144,255);
  rect(316,476,30,30);
  fill(255);
  textSize(30);
  text("+",319,500);
  
  if(mousePressed&&((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496))){
    temp3+=1;
  } 
  if((mouseX>= 316) && (mouseX<=346)&&(mouseY>=476)&&(mouseY<=496)){
    fill(50,205,50);
    rect(316,476,30,30);
    fill(255);
    text("+",319,500);
  } 
    
  //Decrease Temperature Button
  fill(30,144,255);
  rect(196,476,30,30);
  fill(255);
  text("-",202,500);
  
  if(mousePressed&&((mouseX>= 196) && (mouseX<=226)&&(mouseY>=476)&&(mouseY<=506))){
    temp3-=1;
  } 
  if((mouseX>= 196) && (mouseX<=226) && (mouseY>=476)&&(mouseY<=506)){
    fill(255,0,0);
    rect(196,476,30,30);
    fill(255);
    text("-",202,500);
  } 
  
  //Temperature icon Display (Degrees Celsius)
  rect(245,470,55,40);
  fill(0);
  textSize(17);
  text(temp3+"°C",246,495);
  fill(255);
  
  //Pressure Display
  fill(135,206,235);
  rect(430,450,270,75);
  fill(255);
  textSize(30);
  text("Press",440,500);
  textSize(19);
  text("Starting Pressure: 101kPA",435,570);
  if(press3>101){
    peq3 = -1;
    textSize(24);
    fill(50,205,50);
    text("↑ LEFT",675,570);
    fill(255);
    textSize(20);
  }
  if(press3<101){
    peq3 = 1;
    textSize(24);
    fill(255,0,0);
    text("↓ RIGHT",675,570);
    image(co2,650,300,80,100);
    fill(255);
    textSize(20);
  }
  if(press3==101){
    peq3 = 0;
  }
  
  //Pressure Value Display(PA)
  rect(580,470,63,40);
  fill(0);
  textSize(17);
  text(press3+"kPA",579,495);
  fill(255);
  
  //Decrease Pressure Button
  fill(30,144,255);
  rect(536,476,30,30);
  fill(255);
  textSize(30);
  text("-",542,500);
  
  if(mousePressed&&((mouseX>= 536) && (mouseX<=566)&&(mouseY>=476)&&(mouseY<=506))){
    press3-=0.1;
  } 
  if((mouseX>= 536) && (mouseX<=566) && (mouseY>=476)&&(mouseY<=506)){
    fill(255,0,0);
    rect(536,476,30,30);
    fill(255);
    text("-",542,500);
  } 
  
  //Increase Pressure Button
  textSize(30);
  fill(30,144,255);
  rect(656,476,30,30);
  fill(255);
  text("+",659,500);
  
  if(mousePressed&&((mouseX>= 656) && (mouseX<=686)&&(mouseY>=476)&&(mouseY<=506))){
    press3+=1;
  } 
  if((mouseX>= 656) && (mouseX<=686) && (mouseY>=476)&&(mouseY<=506)){
    fill(50,205,50);
    rect(656,476,30,30);
    fill(255);
    text("+",659,500);
  }
  //reset button
   fill(255,0,0);
   rect(20,460,50,50);
   fill(255);
   text("R",35,495);
   
   if(mousePressed&&((mouseX>= 20) && (mouseX<=70)&&(mouseY>=460)&&(mouseY<=510))){
     temp3 = temp3r;
     press3 = press3r;
   } 
   if((mouseX>= 20) && (mouseX<=70) && (mouseY>=460)&&(mouseY<=510)){
     fill(205,92,92);
     rect(20,460,50,50);
     fill(255);
     text("R",35,495);
   }
   //Menu button
   fill(30,144,255);
   rect(725,495,65,30);
   fill(255);
   textSize(16);
   text("Back",734,516);
   
   if(mousePressed&&((mouseX>= 725) && (mouseX<=790)&&(mouseY>=495)&&(mouseY<=525))){
     gamestate = -1;
   } 
   if((mouseX>= 725) && (mouseX<=790) && (mouseY>=495)&&(mouseY<=525)){
     fill(30,144,255);
     rect(725,495,65,30);
     fill(255);
     textSize(16);
     text("Back",734,516);
   }
}
void choiceScreen(){
  background(18, 161, 226);
  textSize(40);
  text("Choose Your Equilibrium Reaction",70,60);
  stroke(255);
  line(0,90,800,90);
  stroke(0);
     
  //Exothermic Reaction Button
  textSize(35);
  fill(123,104,238);
  rect(240,130,300,70);
  fill(255);
  text("(1) Exothermic",250,180);
     
  if(mousePressed&&((mouseX>= 240) && (mouseX<=540)&&(mouseY>=130)&&(mouseY<=200))){
    gamestate = 1;
  } 
  if((mouseX>= 240) && (mouseX<=540) && (mouseY>=130)&&(mouseY<=200)){
    textSize(35);
    fill(186,85,211);
    rect(240,130,300,70);
    fill(255);
    text("(1) Exothermic",250,180); 
   }
     
   //Endothermic Reaction Button
   fill(123,104,238);
   rect(240,240,300,70);
   fill(255);
   text("(2) Endothermic",250,290);
     
   if(mousePressed&&((mouseX>= 240) && (mouseX<=540)&&(mouseY>=240)&&(mouseY<=310))){
     gamestate = 2;
   } 
   if((mouseX>= 240) && (mouseX<=540) && (mouseY>=240)&&(mouseY<=310)){
     textSize(35);
     fill(186,85,211);
     rect(240,240,300,70);
     fill(255);
     text("(2) Endothermic",250,290);
   }
   //Bonus Reaction Button
   fill(123,104,238);
   rect(240,350,300,70);
   fill(255);
   text("(3) Bonus ",250,400);
   
   if(mousePressed&&((mouseX>= 240) && (mouseX<=540)&&(mouseY>=350)&&(mouseY<=420))){
     gamestate = 3;
   } 
   if((mouseX>= 240) && (mouseX<=540) && (mouseY>=350)&&(mouseY<=420)){
     fill(186,85,211);
     rect(240,350,300,70);
     fill(255);
     text("(3) Bonus ",250,400);
   }
   
   //Menu button
   fill(30,144,255);
   stroke(255);
   rect(725,555,65,30);
   stroke(0);
   fill(255);
   textSize(16);
   text("Menu",734,576);
   
   if(mousePressed&&((mouseX>= 725) && (mouseX<=790)&&(mouseY>=555)&&(mouseY<=585))){
     gamestate = 0;
   } 
   if((mouseX>= 725) && (mouseX<=790) && (mouseY>=555)&&(mouseY<=585)){
     fill(30,144,255);
     stroke(255);
     rect(725,555,65,30);
     stroke(0);
     fill(255);
     textSize(16);
     text("Menu",734,576);
     
   }
   
   
}

void keyReleased()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      left = false;
    }
    if (keyCode == RIGHT)
    {
      right = false;
    }
    if (keyCode == UP)
    {
      up = false;
    }
    if (keyCode == DOWN)
    {
      down = false;
    }
 }
}
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      left = true;
    }
    if (keyCode == RIGHT)
    {
      right = true;
    }
    if(keyCode == UP){
      up = true;
    }
    //if(keyCode == DOWN){
      //down = 0;
    //}
  }
}
  