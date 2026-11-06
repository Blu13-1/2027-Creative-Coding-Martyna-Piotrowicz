class Particle 
{
  PVector pos;
  int size;
  int time;
  int timebackup;
  int alpha,alpha1,alpha2; // alpha for current alpha, alpha1 for bottom threshold, alpha2 for top threshold
  Particle(int x, int y, int size, int time, int alpha1, int alpha2)//command with 6 arguments
  {
    pos = new PVector(x,y);
    this.time = time;
    timebackup = time;
    this.size = size;
    this.alpha1 = alpha1;
    this.alpha2 = alpha2;
  }
  
  void Update()
  {
    pos.x ++; //change x
    timebackup --; // time counts down to zero
    if (pos.x > (width+size)) // added size so when it goes offscreen it respawns
    {
      pos.x = -size;
      alpha = 0;  //alpha starts at zero
  }
    if (timebackup < 0) //at zero it starts going diagonally
    {
      pos.y --;
      if (pos.y< 0) // at top of screen
      {
        timebackup = time; // reload time
        alpha = 0; // alpha resets to zero
        pos.y = (height - size); // put particle to ground
      }
    }
  }
  
  void Render()//This draws individual particle 
  {
    noStroke();
    fill(255,117,24,alpha);
    ellipse(pos.x,pos.y, size, size);
    if (pos.y < alpha1) //under bottom threshold
  {
      if (pos.y < alpha2) // under top threshold
    {
        alpha-=5; // decrease alpha
    } 
      else if (pos.y > alpha2) // after top threshold
      {
        if (pos.x > width - 150) // near right side of screen
        {
        alpha -= 1; // decrease alpha
        } 
        else if (pos.x > 0) // after left side of screen
        {
        alpha+=(1); // increase alpha
        }
     }
   } 
  }
  
}
