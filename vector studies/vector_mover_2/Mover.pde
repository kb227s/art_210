class Mover //to define mover
{
 PVector location = new PVector (0,0);
 PVector velocity = new PVector (0,0);  //moves vector speed
 PVector acceleration = new PVector(.01,.03); //moves vector in length and direction

  Mover()
  {
    
  }

  void update()
  {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    dir.normalize();
    dir.mult(1);
    
    location.add(velocity);
    velocity.limit(6); //limits maximum speed
    velocity.add(acceleration);
    acceleration=dir;
  }
  
  void check()
  {
    if(location.x < 0) location.x = width;  //when location.x reaches borders, continue 
    if(location.x > width) location.x = 0;  //^^
    if(location.y < 0) location.y = height; //when location.y reaches borders, continue
    if(location.y > height) location.y = 0; //^^
  }
  
  void display()
  {
    stroke(0);
    fill(175);
    circle(location.x,location.y,20);
  }
}
