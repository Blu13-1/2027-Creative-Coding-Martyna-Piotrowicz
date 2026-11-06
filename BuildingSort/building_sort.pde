
Room[] rooms = new Room[100];

void setup()
{
  
  size (500,500);
  
  BuildRooms();
   frameRate(5);
}

int person = 1;
void draw()
{
  
   for(int i =0; i < rooms.length; i ++)
    {
      Room r = rooms[i];
      if((i + 1) % person == 0)
      {
      r.LightSwitch();
      }
    }
  
   for(int x =0; x < 100; x ++)
    {
      Room r = rooms[x];
      r.Render();//draw the rooms 
    }
  person++;
}

void BuildRooms()
{
  for(int y =0; y < 10; y ++)
  {
    for(int x =0; x < 10; x ++)
    {
      int xPos = x * 50;
      int yPos = y * 50;
      rooms[x + (y*10)] = new Room(xPos, yPos, 50); //loop the rooms along the x axis
    }
  }
}
