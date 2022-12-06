
PShape p1;
PShape p2;
float count = 1;
float step = 1;
void setup()
{
  size(800,600);
  p1 = loadShape("ghost1.svg"); //make sure design is saved as svg before you import
  p2 = loadShape("ghost2.svg");
}

void draw()
{
  count = count +1;
  if(count > 20) count = 0;
  step = step + 2;
  if(step > width + 100) step = -100;
  background(255);
  if(count < 15)
  {
  shape(p1,step,0,115,185);
  }
  else
  {
  shape(p2,step,0,115,185);
  }
}
