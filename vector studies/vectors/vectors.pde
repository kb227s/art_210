void setup()
{
 size(800,600); 
}

void draw()
{
  background(225);
  PVector m = new PVector(mouseX,mouseY); //makes one vector follow the mouse
  PVector c = new PVector(width/2,height/2); //makes one vector in the center of the window
  m = m.sub(c); //subtracts xmouse & ymouse by the center of the vector
  m.setMag(100); //sets length as 100 pixels
  
  translate(width/2,height/2);
  
  line(0,0,m.x,m.y); //line to represent vector
}
