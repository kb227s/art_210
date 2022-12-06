PVector pos = new PVector(100,100); //float xpos & ypos put into one class
PVector speed = new PVector(1,2.1); //float xspeed & yspeed

void setup()
{
  size(800,600);
}

void draw()
{
  background(255);
  circle(pos.x,pos.y,50); //connected to PVector pos, the "." specifies to x & y
  pos = pos.add(speed); // ".add(speed)" bc pos and speed regards 2 variable (xpos & ypos/xspeed & yspeed)

 if ((pos.x > width) || (pos.x < 0)) //if circle reaches x borders...
 {
   speed.x = speed.x*(-1); //reverse xpos
 }
 if ((pos.y > height) || (pos.y < 0))
 {
   speed.y = speed.y*(-1);
 }
}
