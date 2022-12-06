class Bullet //to define mover
{
 PVector location = new PVector (0,0);
 PVector velocity = new PVector (0,0);
 
 Bullet()
 {
  location.x=width/2;
  location.y=height;
 }
 
 void update()
 {
   location.add(velocity);
 }
 
 void check()
 {
  if(location.x<0 || location.x> width || location.y<0 || location.y>height)
  {
    location.x=width/2;
    location.y=height;
    velocity.x=0;
    velocity.y=0;
  }
 }
 
 void shoot()
 {
  PVector mouse = new PVector(mouseX,mouseY);
  mouse = mouse.sub(location);
  mouse.normalize();
  mouse.mult(20);
  velocity = mouse;
 }
 
 void display()
  {
    stroke(0);
    fill(175);
    circle(location.x,location.y,20);
  }
}
