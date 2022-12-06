PFont myfont;
//PShape myShape;    to add shape from files

void setup()
{
  size(800,600);
  
  myfont = createFont("Poppins-BoldItalic.ttf",50);  
  textFont(myfont);
  //myShape = loadShape("filename");
  String[] fontList = PFont.list();      //list of fonts 
  for(int i = 0; i < fontList.length; i = i + 1)
    {println(fontList[i]);}
}

void draw()
{
  background(230);
  //shape(myShape,0,0);
  fill(200,0,0);
  textSize(50);
  textAlign(CENTER,CENTER); //midline of text is centered
  text("Bob Loblaw, Attorney at Law",width/2,height/2); //text("text",xpos,ypos)
  noFill();
  rect(width/2,height/2,300,200);
}
