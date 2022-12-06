Mover m; //variable

void setup()
{
 size(800,600); 
 m = new Mover();  //variable
}

void draw()
{
  background(255);
  m.update(); //activates update in class
  m.check();  //activates check
  m.display();  //activates display
}
