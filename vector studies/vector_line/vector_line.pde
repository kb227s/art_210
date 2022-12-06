void setup()
{
  size(800,600);
}

void draw()
{
  background(255);
  PVector mouse  = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  //PVector subtraction!
  mouse.sub(center);
  mouse = mouse.normalize(); //vector length will always be 1
  mouse = mouse.mult(50);
  //Draw a line to represent the vector.
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
}
