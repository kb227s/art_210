int nMover = 200; //creates integer number so we can use it in place of # of objects
Mover[] m = new Mover[nMover]; //variable = an area of variables, 10 slots

void setup()
{
 size(1200,1000); 
 for(int i = 0; i < m.length; i = i + 1) //creates a loop, beginning i = 0, with every step it increases value by 1
 {  //whatever we put here will be repeated 10 times, as directed by our area
   m[i] = new Mover();
 }
 //m[0] = new Mover();  //variable in only 1/10 slots
// m[1] = new Mover();  //variable in 2/10 slots etc

}

void draw()
{
  background(255);
  for(int i = 0; i < m.length; i = i + 1) //nMover can also be replaced with m.length
  {
  m[i].update(); //activates update in class
  m[i].check();  //activates check
  m[i].display();  //activates display
  }
  stroke(255,0,0);
  noFill();
  circle(mouseX,mouseY,600);
}

void mousePressed()
{
  
}
