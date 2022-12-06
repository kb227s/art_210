import processing.sound.*;
Amplitude amp;  //amplitude class
AudioIn in;  //audio input "in'

void setup() {
  size(640, 360);
  background(255);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);  //0 = first mic/object
  in.start();  //starts sound input from object
  amp.input(in);
}      

void draw() {
  background(255);
  circle(width/2,height/2,amp.analyze()*900);
  println(amp.analyze());
}
