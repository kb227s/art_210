
int nMover = 200; //creates integer number so we can use it in place of # of objects
Mover[] m = new Mover[nMover]; //variable = an area of variables, 10 slots
boolean clicked = false;
int living = nMover;
PImage ufo;
PImage cows;
PGraphics screen;  //for graphics

void setup()
{
 size(1200,1000); 
 surface.setTitle("om nom nom");
 for(int i = 0; i < m.length; i = i + 1) //creates a loop, beginning i = 0, with every step it increases value by 1
 {  //whatever we put here will be repeated 10 times, as directed by our area
   m[i] = new Mover();
 }
 //m[0] = new Mover();  //variable in only 1/10 slots
// m[1] = new Mover();  //variable in 2/10 slots etc

  ufo = loadImage("ufo.png");
  screen = createGraphics(width,height);  //for graphics
}

void hud()
{
  fill(color(100,100,250,9));
  rect(558,25,85,45);
  translate(width/2,10);
  fill(color(255));
  textAlign(CENTER);
  text(living,0,50);
  textSize(40);

  
  translate(-nMover,0);
  fill(color(255,0,100));
  rect(0,0,living*2,15);
  noFill();
  stroke(color(255));
  rect(0,0,nMover*2,15);
  
}

void draw()
{
  screen.beginDraw(); //for graphics system, have to put 'screen." before everything
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1) //nMover can also be replaced with m.length
  {
  m[i].update(); //activates update in class
  m[i].check();  //activates check
  m[i].display();  //activates display
  }
  screen.endDraw();  //for graphics system
  image(ufo,mouseX-40,mouseY-40,80,80);
  tint(0, 153, 204, 70);
  drawMe();
  hud();
  
}

void drawMe()
{
  noStroke();
  fill(255,0,100,100);
  //circle(mouseX,mouseY,30);
}

void mousePressed()
{
  for(int i = 0; i < m.length; i = i + 1) //nMover can also be replaced with m.length
  {
    m[i].bite();
  }
}
