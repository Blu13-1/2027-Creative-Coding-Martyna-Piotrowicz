import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import processing.sound.*;

PImage image;
AudioIn in;
Amplitude amp;

void setup()
{
  size(500,500);
  amp = new Amplitude(this);
  in = new AudioIn(this); // input of the audio e.x. mic
  amp.input(in); // log the amp of the in line
  in.start();// start monetering
  image = loadImage("Circle.jpg");
}

int size = 100;
void draw()
{
  image(image,0,0);
  println(amp.analyze());
  noFill();
  stroke(240,230,140);
  ellipse(250,250,size,size);
  
  if(amp.analyze() > 0.1f)
  {
  size++;
  }
   else if(size < 200)
  {
  size --;
  }
}
