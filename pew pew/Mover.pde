class Mover //to define mover
{
 PVector location = new PVector (0,0);
 PVector velocity = new PVector (0,0);  //moves vector speed
 PVector acceleration = new PVector(.01,.03); //moves vector in length and direction
 PVector bottom = new PVector(width/2,550);

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
    if(location.x < 0) location.x = width/2;  //when location.x reaches borders, continue 
    //if(location.x > width/2) location.x = 0;  //^^
    if(location.y < 0) location.y = 550; //when location.y reaches borders, continue
    if(location.y > height) location.y = 0; //^^
  }
  
  void display()
  {
    stroke(0);
    fill(175);
    circle(location.x,location.y,20);
    line(0,0,location.x,location.y);
    println(location.x);
  }
}
