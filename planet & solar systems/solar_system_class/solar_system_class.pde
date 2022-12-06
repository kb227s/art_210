/* NOTES
this. = method, you can access them from inside to create properties for individual functions/planets
class names start w/ capital letter
*/
int nPlanets = 25;
Planet[] p = new Planet[50]; //global variable

void setup()
{
  size(800,600,P3D);
  surface.setResizable(true); //can manually resize
  for(int i = 0; i < nPlanets; i = i + 1)
  {
    p[i]=new Planet(random(10,60),random(100,400));
    p[i].randomize();
    p[i].createMoons();
  }
}

void draw()
{
  clearScene();
  translate(width/2,height/2);
  fill(color(255,200,0));
  circle(0,0,50);
  for(int i = 0; i < nPlanets; i = i + 1)
  {
    p[i].show();
  }
}

void clearScene()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,width,height);
}
