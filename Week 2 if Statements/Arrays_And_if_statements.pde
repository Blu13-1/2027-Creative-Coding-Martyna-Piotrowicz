

void setup()
{
  size (500,500);
  
  
}
 //boolean something = false;
 
 int posX = 250, posY = 100, size = 50;
void draw()
{
  background(75);
  strokeWeight(1);
  line(250,0,250,250);
  strokeWeight(0);
  fill(55);
  ellipse(250,175,50,50);
  rect(225,175,50,50);
  fill(255);
   if(mouseX >= (posX - size * 0.5)
     && mouseX <= (posX + size * 0.5)
     && mouseY >= (posX - size * 0.5)
     && mouseY <= (posX + size *0.5))
  {
    size --;
    fill(255,0,0);
  }
  
  else if(size < 100)
  {
  size ++;
  }
  ellipse(250,250,size,size);
  {  
   
    strokeWeight(1);
  line(posY,0,posY,posY);
  strokeWeight(0);
  fill(55);
  ellipse(posY,125,50,50);
  rect(75,125,50,50);
  fill(255);
  
  ellipse(posY,175,75,75);
  }
 
  
}
