

class Room
{
  
  PVector pos;// position of the object
  int size; 
  boolean lightOn = false;
  
  Room(int x, int y, int size)
  {
    pos = new PVector(x,y);
    this.size = size;
    
  }
void LightSwitch()
{
  lightOn =! lightOn;
  
  
}
 
  void Render()
{
  
  if(lightOn)
  {
    fill(255,255,102);
  }
  else
  {
    fill(53,56,57);
  }
  
  
  strokeWeight(5);
  stroke(0);
  rect (pos.x,pos.y,size,size);
  fill (53,56,57);
}
  
  
}
