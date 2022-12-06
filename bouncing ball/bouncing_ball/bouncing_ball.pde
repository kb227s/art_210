float xpos = 100; //defining variable 
float xspeed = 5; //controls movement in the xpos
float ypos = 100;
float yspeed = 2.1; //controls movement in ypos

void setup()
{
  size(800,600);
}

void draw()
{
  background(255);
  circle(xpos,ypos,50); //circle is made up of (x position,y position,size)
  xpos = xpos + xspeed; //commanded the variable "xpos" to move the circle by "xspeed"
  ypos = ypos + yspeed;
  if ((xpos > width) || (xpos < 0)) // if the circle(xpos) reaches the right & left borders (defined by size of screen)
  {
    xspeed = xspeed*(-1); //make the xpos reverse
    fill(10);
  }
   if ((xpos > width) || (xpos < 0)) //if the circle(ypos) reaches the top & bottom border
  {
    yspeed = yspeed*(-1); //reverses ypos
    fill(255);
  }

}
