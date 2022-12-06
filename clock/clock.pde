float _angle = 0;
PFont myfont;
PImage img;

void setup()
{
  size(800,600);
  img = loadImage("star chart.jpeg");
}

void draw()
{
  

  String[] numbers = {"XII","I","II","III","IIII","V","VI","VII","VIII","IX","X","XI"};
  
  translate(width/2,height/2);
  strokeWeight(5);
  fill(255);
  circle(0,0,height-100);
  circle(0,0,height-220);
  circle(0,0,20);
  //imageMode(CENTER);
  //image(img,0,0);
  //tint(255,100);
  pushMatrix();
    rotate(radians(_angle)*4);    //minute hand
    line(0,-200,0,0);
  popMatrix();
  pushMatrix();
    rotate(radians(_angle)/3);    //hour hand
    line(0,-90,0,0);
  popMatrix();
    pushMatrix();
    rotate(radians(_angle)*4);    //minute circle
    circle(0,-200,15);
  popMatrix();
  pushMatrix();
    rotate(radians(_angle)/3);    //hour circle
    circle(0,-90,10);
  popMatrix();
  
  _angle = _angle +1;
  for(int n = 0; n < 12; n = n + 1)
  {
    pushMatrix();
    rotate(radians(n*30));
    translate(0,-225);
    //rotate(radians(n*-30));  //rotates text horizontally
    fill(0);
    textSize(30);
    textAlign(CENTER,CENTER);
     myfont = createFont("TimesNewRomanPSMT",45);  
  textFont(myfont);
    text(numbers[n],0,0);
    popMatrix();
  }
}
