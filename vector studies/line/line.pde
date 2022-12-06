void setup()
{
 size(800,600);
 recursive(
   0,height/2,
  width, height/2,
   2);
}

void recursive(float x1, float y1, float x2, float y2, int gen) //limits: x1,x2,y1,y2,gen
{
  stroke(0);
  //line(x1,y1,x2,y2);
  float h = random(-20,20);
  if(gen > 0)
  {
  recursive(x1, y1, x2/2, y2+h, gen-1);
  recursive(x2/2, y2+h, x2, y2, gen-1);
  }
  else {
   line(x1,y1,x2,y2); 
   circle(x1,y1,10);
   circle(x2,y2,10);
  }
}
