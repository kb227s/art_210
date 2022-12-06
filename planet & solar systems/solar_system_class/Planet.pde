class Planet
{
  float size = 20;    //planet size
  float dist = 100;   //distance from sun
  float angle = 0;    //starting angle
  float speed = 1.0;  //speed
  color col = color(255,255,255);  //color
  Planet[] moons = new Planet[20];
  int nMoons = 0;
  
  Planet(float _size, float _dist)
  {
    this.size = _size;
    this.dist = _dist;
    
  }
  
  //show planet on the screen
  void show()
  {
    pushMatrix();
    rotate(radians(this.angle));
    translate(this.dist,0);
    noStroke();
    fill(this.col);
    circle(0,0,this.size);
    this.angle = this.angle+this.speed;
    for(int i = 0; i < nMoons; i = i + 1)
    {
      this.moons[i].show();
    }
    popMatrix();
  }
  
  void randomize()
  {
  this.size = random(5,20);    //planet size
  this.dist = random(10,200);   //distance from sun
  this.angle = random(360);    //starting angle
  this.speed = random(-2.0,2.0);  //speed
  this.col = color(random(255),random(0),random(255));  //color
  }
  
  void createMoons()
  {
    this.nMoons = floor(random(4));
    for(int i = 0; i < this.nMoons; i = i + 1)
    {
    moons[i]=new Planet(random(10,60),random(100,400));
    moons[i].randomize();
    }
  }
}
