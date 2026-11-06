//importing libraries for sound imput
import processing.sound.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage photo;
PImage photo2;
int bar = 10;

Particle[] p = new Particle[100]; // particle array of array length 100

AudioIn in;
Amplitude amp;

void setup()
{
  
  size(600,600);
  
  int time;//the time it takes to appear
  int size = (int)random(1,10);//the size is random in between 1-9 pixels
  
 for(int i = 0; i < p.length; i ++) // each particle, i increases for the length of the array
 {
   size = (int)random(1,10); //randomize size
   time = (int)random(9,900); //randomize time to flow up in ms
   p[i] = new Particle((int) random(0, width), (int)height-size, (int)size, (int)time, (height / 10)*9, (height / 5)); //the object at index i gets spawned as a new particle
 }
 
  photo = loadImage("Fire2.png");
  photo2 = loadImage("FireOpaque.png");
  
  amp = new Amplitude(this);
  in = new AudioIn(this); // input of the audio e.x. mic
  amp.input(in); // log the amp of the in line
  in.start();// start monetering
  
}


void draw()
{
  background(0);
  
  //Puts my image in the center, no matter what size the canvas is 
  imageMode(CENTER);
  image(photo2, width/2, height/2);
  
  println(amp.analyze());
  if(amp.analyze() > 0.031f)
  {
    
    image(photo, width/2, height/2);
    
  }
  for(int i = 0; i < p.length; i ++) // each particle gets updated
 {
   Particle x = p[i];
   x.Update();
   x.Render();
 }
 
 //These are the borders, drawn no matter what size the canvas is
  fill(205,87,0);
  noStroke();
  rect(0,0,bar,height);  
  rect(width-bar,0,bar,width); 
  rect(0,0,width,bar);
  rect(0,height-bar,width,bar);
  
 
}
