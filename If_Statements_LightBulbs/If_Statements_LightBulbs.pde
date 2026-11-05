

void setup()
{
  size (500,500);
}
 
 int posX = 250, posY = 400, size = 50, size2 = 80;
 
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
  //when the mouse hovers over the middle lightbulb circle, the lightbulb turns red and shrinks.
  
  else if(size < 100)
  {
  size ++;
  }
  ellipse(250,250,size,size);
  {  
   
    strokeWeight(1);
  line(100,0,100 ,posY - 25);
  strokeWeight(0);
  fill(55);
  ellipse(100,posY-50,50,50);
  rect(75,posY-50,50,50);
 
  
  fill(255);
     if(mouseX >= (60 - size2 * 0.2 )
     && mouseX <= (120 + size2 *0.2 )
     && mouseY >=(posY - size2 * 0.5)
     && mouseY <= (posY + size2 * 0.5))
  {
    fill(8,133,161);
    posY = posY -2 ;
  }
   else if(posY < 400)
  {
    posY = posY +3;
  }
  ellipse(100,posY,size2,size2);
  }
 
 int[] age = {35,36,19,21};
 println(age[3]);
 
  
}
