class Sq
{
  float xpos = 0;
  float ypos = 0;
  float d = 10;   //size
  boolean isBlack = false;
  boolean nextBlack = false;
  
  Sq()
  {
    stroke(255);
  }
  
  void show()
  {
    fill(color(0,0,0));
    if(this.isBlack) fill(color(255,255,255));
   square(this.xpos*this.d,this.ypos*this.d,this.d);
  }
  
  void clicked()
  {
    if(
      mouseX > this.xpos*this.d
      &&
      mouseX < (this.xpos*this.d)+d
      &&
      mouseY > this.ypos*this.d
      &&
      mouseY < (this.ypos*this.d)+d
    )
    {
      this.isBlack = !this.isBlack;
    }
  }
} //end of class Sq
