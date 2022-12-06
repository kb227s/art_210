class Planet //class variable, now we need to create properties below
{
  float size = 20;    //planet size
  float dist = 100;   //distance from sun
  float angle = 0;    //starting angle
  float speed = 1.0;  //speed
  color col = color(255,255,255);  //color
  Planet[] moons = new Planet[20];
  int nMoons = 0;
  int generation = 0;
  
  Planet(int gen) // sun --> constructor/Planet(int gen)
  {
    this.generation = gen;
    if(this.generation > 0)
    {
    this.createMoons();
    }
  }
  
  void show()//show planet on the screen
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
  
  void randomize() //randomize the properties of the planets
  {
  this.size = random(5,20);    //planet size
  this.dist = random(10,200);   //distance from sun
  this.angle = random(360);    //starting angle
  this.speed = random(-2.0,2.0);  //speed
  this.col = color(random(255),random(255),random(255));  //color
  }
  
  void createMoons() //method to create moons
  {
    this.nMoons = floor(random(1,4));
    for(int i = 0; i < this.nMoons; i = i + 1)
    {
    this.moons[i]=new Planet(this.generation -1); //we maded gen -1, so every gen is one less than the last
    this.moons[i].randomize();
    }
  }
}
