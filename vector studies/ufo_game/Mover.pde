class Mover //to define mover
{
 PVector location = new PVector (0,0);
 PVector velocity = new PVector (0,0);  //moves vector speed
 PVector acceleration1 = new PVector(0,0); //moves vector in length and direction, 1 means chase mouse
 PVector acceleration2 = new PVector(0,0);  //2 means random crawling
 float max_speed = random(1,5); //creates randomized speed
 float max_acc = random(0.1,0.5);
 boolean live = true;
 float dist = 0; //distance from mouse

  Mover()
  {
    this.location.x = random(width); //randomizes starting pos
    this.location.y = random(height);
  }

  void update()
  {
    if(live)
     {
      PVector mouse = new PVector(mouseX,mouseY);
      PVector dir = PVector.sub(mouse,location);
      this.dist = dir.mag(); //#length of distance from mouse
      
      dir.normalize(); //length doesn't matter, only direction
      dir.mult(max_acc);  //limit of acceleration
      location.add(velocity);
      velocity.limit(max_speed); //limits maximum speed
    
      acceleration1=dir;  //chasing the mouse
      acceleration2 = PVector.random2D(); //crawling
    
      if(dist < 300) // if dist is 300
      {  //lerp = linear interpolation
        acceleration1 = acceleration2.lerp(acceleration1,3.0-(dist/300.0));  //2 only chases if really near to 300
        acceleration1.mult(-1.0); //rotating the vector
        velocity.add(acceleration1);  //object accelerates toward mouse
      }
      else
      {
        velocity.add(acceleration2);  //if not 300 from mouse, random crawling
      }
    }
  }
  
  void bite()
  {
    if(live)
    {
     if(this.dist < 30) 
     {
       this.live = false; //if dist of mouse to cell is less than 30, when mouse clicks the cell dies
       living = living - 1;
     }
    }
  }
  void check()
  {
    if(live)
      {
      if(location.x < 0) location.x = width;  //when location.x reaches borders, continue 
      if(location.x > width) location.x = 0;  //^^
      if(location.y < 0) location.y = height; //when location.y reaches borders, continue
      if(location.y > height) location.y = 0; //^^
      }
  }
  
  void display()
  {
    fill(200,245,255); //color if die
    if(live)
    {
    //colorMode(HSB,width,100,10); //makes it rainbow
    fill(dist,100,200);
    }
    noStroke();
    circle(location.x,location.y,15);
  }
}
