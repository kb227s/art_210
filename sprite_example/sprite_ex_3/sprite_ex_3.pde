import processing.sound.*;
SoundFile beep;  

int gameState = 0; //0 startscreen, 1 is gameplay, 2 is death

Ghost s; 
Ground[] g;  //made array instead of Groung g1,g2,g3
int nGround = 0;
Sky k; 
Boulder b;

void setup()
{
  size(800,600);
  beep = new SoundFile(this,"wind.wav");
  reset();
}

void draw()
{
  if(gameState == 0) startScreen();
  if(gameState == 1) gamePlay();
  if(gameState == 2) deadScreen();
}

void keyPressed()
{
  if(gameState == 0) gameState = 1;
  if(gameState == 1) s.jump();
  if(gameState == 2)
  {
   reset();
   gameState = 1;
  }
}

void reset()
{
  s = new Ghost(); 
  s.location.x = (-width/2)+100;
  s.location.y = (height/2)-200;
  String[] files = {"ghosts1.svg","ghosts2.svg"}; //created 2 element arrays w/ those filenames
  s.addAnimation(files,15);
  String[] files1 = {"ghosts1.svg","ghosts2.svg"}; //for changing its direction when it flips, would make new svg files
  s.addAnimation(files1,15);
  String[] files2 = {"ghostsUp.svg"}; //for jump
  s.addAnimation(files2,15);
  String[] files3 = {"ghostsDown.svg"}; //for jump
  s.addAnimation(files3,15);
  s.currentAni = 0;
  
  nGround = ceil(width/1000.0)+1;          //ceiling 
  
  g = new Ground[nGround];                 //creates an array for g1,g2,g3
  println(nGround);
  String[] files4 = {"ground1.svg"};       //for jump
  for(int i =0; i < nGround; i = i + 1)    //creates array loop
  {
    g[i] = new Ground();
    g[i].addAnimation(files4,15);
    g[i].location.x = -(width/2.0)+(g[i].boxx * i);
  }
  
  String[] files5 = {"boulder1.svg"};
  String[] files6 = {"boulder2.svg"};
  b = new Boulder();
  b.addAnimation(files5,10);
  b.addAnimation(files6,10);
  
  /* 
  g1 = new Ground();
  String[] files4 = {"ground1.svg"}; //for jump
  g1.addAnimation(files4,15);
  g1.location.x = -(-width/2.0);
  
  g2 = new Ground();
  g2.addAnimation(files4,15);
  g2.location.x = -(-width/2.0)+g2.boxx;
  
  g3 = new Ground();
  g3.addAnimation(files4,15);
  g3.location.x = -(-width/2.0)+(g3.boxx*2.0); */
}

void startScreen()
{
  noStroke();
  fill(100);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("Press ANY key to begin", width/2, height/2);
}

void deadScreen()
{
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textAlign(CENTER,CENTER);
  text("You died... again. Press ANY key to give it another go.", width/2, height/2);
}

void gamePlay()
{
  background(255);
  translate(width/2,height/2);
  
  for(int i =0; i < nGround; i = i + 1)  //creates array loop
  {
    g[i].update();
    g[i].check();
    g[i].display();
  }
  /*
  g1.update();
  g1.check();
  g1.display();
  
  g2.update();
  g2.check();
  g2.display();
  
  g3.update();
  g3.check();
  g3.display();
  */
  
  b.update();
  b.check();
  b.display();
  
  s.update();
  s.check();
  s.display();
}
