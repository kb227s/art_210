Planet sun;

void setup()
{
  size(800,600);
  sun = new Planet(3); //creates sun --> constructor in Planet(int gen), # = generations
  sun.dist = 0;
  sun.speed = 0;
  sun.createMoons();
}

void  draw()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,width,height);
  translate(width/2,height/2);
  scale(0.5); 
  sun.show();
}
