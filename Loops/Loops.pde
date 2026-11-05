void setup()
{
  //background(137, 207, 240);
  size(500,500);
  
}

void draw()
{
  
  
  //Border();// call a void // function
  
    //println(i * seven);
    for(int i =0; i <= width; i+= 25)
    {
      line(i,0,i,height);
    }
    
  }
  
  


int seven = 7;
int ten = 10; // this is the number 10
void Border()
{
  noStroke();
  
  rect(0,0,width,15);// draw rect in the center.
  rect(0,height - 15,width,15);
  rect(width -15,0,15,height);
  rect(0,0,15,height);
  fill (0, 0, 139);
}
