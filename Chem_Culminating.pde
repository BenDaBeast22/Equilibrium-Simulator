//Images
PImage potion;
PImage red; //Red solution used in simulation 2
PImage colourless;//colourless solution used in simulation 2
PImage co2;//carbon dioxide image used in sim 1
PImage NH3;//Amonnia image used in sim 1
PImage chemist;//chemist dude in the instructions
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

void setup(){
  size(800,600);
  background(0);
  smooth();
  cursor(HAND);
  
  potion = loadImage("potion.jpg");
  red = loadImage("red.jpg");
  colourless = loadImage("colourless.jpg");
  co2 = loadImage("co2.jpeg");
  NH3 = loadImage("Ammonia.jpg");
  chemist = loadImage("mad chem.jpeg");  
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
  if(gamestate == -2){
    instructions();
  }
  if(gamestate == 3){
    simulation3();  
  }
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
  