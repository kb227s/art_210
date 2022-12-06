/*  notes
rect size = (100,100)
*/

int _gridsize = 8; //int = function, so it goes 'int "name" = value'

void setup()
{
  size(800,800);
  surface.setResizable(true);
}

void draw()
{
  int count = 1;
  for(int y = 0; y < _gridsize; y = y + 1)
  {
    for(int x = 0; x < _gridsize; x = x + 1)
    {
      count = count + 1;
      if(count % 2 == 0)
      {
        fill(0);
      }
      else
      {fill(color(255,255,255,10));
      }
      rect(x*(width/_gridsize),y*(height/_gridsize),width/_gridsize,height/_gridsize);
    }
    count = count + 1;
  }
}
