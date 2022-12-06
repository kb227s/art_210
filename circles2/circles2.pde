/*
Our first example :D
It makes random circles
*/

int screenX = 1000;
int screenY = 1000;

void setup()
{
  //Set the window size
  size(1000,1000);
}

void draw()
{
  noStroke();
  color background = color(185,195,250,10);
  fill(background);
  
  rect(0,0,screenX,screenY);
  fill(color(random(220),100,160));
  circle(mouseX,mouseY,150);
  //circle(mouseX/5,mouseY/5,18);
  //circle(mouseY,mouseX,100);
  //circle(mouseX,mouseY,(mouseX+mouseY)/2);
  circle(mouseX+50,mouseY,150);
  circle(mouseX-50,mouseY,150);
}
