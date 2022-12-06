class Sprite
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float boxx = 100;
  float boxy = 150;
  PVector reg = new PVector(boxx/2,boxy/2);
  
  Sprite()
  {
    
  }
  
  void update()
  {
    this.velocity = this.velocity.add(this.acceleration);
    this.location = this.location.add(this.velocity);
  }
  
  void check()
  {
    float actualX = screenX(this.location.x,this.location.y);
   if(actualX > width+boxx) this.location.x = -boxx-(width/2);
  }
  
  void display()
  {
    pushMatrix();
      translate(this.location.x,this.location.y);
      noStroke();
      fill(0,100,255);
      circle(0,0,10);
      translate(-reg.x,-reg.y);
      fill(0,100,255,20);
      rect(0,0,boxx,boxy);
    popMatrix();
  }
}
