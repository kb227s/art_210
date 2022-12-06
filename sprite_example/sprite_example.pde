PShape sprite; 
PImage sprite1;
PGraphics sprite2;

void setup()
{
  size(1000,800);
  //sprite = loadShape("blank.svg"); //name.data folder
  sprite1 = loadImage("datboi.png");
  sprite2 = createGraphics(100,100);  //size of graphics system
}

void draw()
{
  sprite2.beginDraw();  //begin system, everything between only exists in graphics system
  //sprite2.background(255);
  sprite2.fill(255);
  sprite2.circle(50,50,30);
  sprite2.endDraw();  //end graphic system
  
  background(0);
  //shape(sprite,mouseX,mouseY);
  image(sprite1,mouseX-(sprite1.width/2),mouseY-(sprite1.height/4),300,400);
  image(sprite2,mouseX-(sprite2.width/2),mouseY-(sprite2.height/2));
}
