/*
Random circle drawer :D
*/

float _angle = 0;

void setup()
{
  size(1000,800);
}

void draw()
{ 
  //main functions!
  clearScene(); //controls bg
  _angle = setAngle(_angle,0.5); //controls color of circles(.5 = step)
  drawCircle(_angle); //controls circles
}



float setAngle(float angle,float step)
{
  //check angle value
  angle = angle + step;
  if(angle > 360)
  {
    angle = 0;
  }
  println(angle);
  return(angle);
}

void clearScene()
{
  //partial screen clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,1000,800);
}
 
void drawCircle(float angle)
{
  //draw random circle
  noStroke();
  colorMode(HSB,360,100,100);
  float hue = random(angle,angle+30);
  float sat = random(100,100);
  float bri = random(150,150);
  color circle_color = color(hue,sat,bri);
  fill(circle_color);
  circle(random(1000),random(800),120);
  //fill(color(random(200),random(0),random(255)));
  //fill(color(255,255,255));
  //circle(mouseX,mouseY,100);
}
