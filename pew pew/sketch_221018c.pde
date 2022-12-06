Bullet bullet;
PVector pos = new PVector(100,100);
PVector speed = new PVector(1,2.1);

void setup()
{
 size(800,600); 
 bullet = new Bullet();
}
void draw()
{
  background(255);
  bullet.update();
  bullet.check();
  bullet.display();
  /*
  PVector aim  = new PVector(mouseX,mouseY);  //pos of pt 1
  PVector bottom = new PVector(width/2,550); //pos of pt 2
  aim.sub(bottom);
  aim = aim.normalize(); //vector length will always be 1
  aim = aim.mult(50);
  translate(width/2,550);
  line(0,0,aim.x,aim.y);
     strokeWeight(10);
     strokeCap(SQUARE);
*/
}

void mousePressed()
{
  bullet.shoot();
  
}
