

class Bubble 
{
  
  PVector pos;
  int size;
  int posoffset;
  int posx;
  Bubble(int x, int y, int size)
  {
    pos = new PVector(x,y);
    
    this.size = size;
  }
  
  
  
  
  void Update()
  {
    posoffset ++;
    pos.y --;
    
    if (pos.y < (0 - size)){
      pos.y = height + size;
    
    }
    
  }
  
  
  void Render()
  {
    noFill();
    stroke(255);
    ellipse(pos.x,pos.y, size, size);
    fill(255);
    ellipse(pos.x - size * 0.25,pos.y - size * 0.25, size*0.1, size*.1);
       
  }
  
}
