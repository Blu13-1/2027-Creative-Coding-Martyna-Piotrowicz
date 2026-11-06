public float inc;
void setup() 
{
  size(500,500);
}


void draw()
{
  background(0);
  fill(255);
  ellipse(224, 184, 220, 220);
  fill(0);
  ellipse(inc % 480, 184, 220, 220); 
  // once inc reaches 480 the circle goes back to 0 and repeats//

inc += 2; 
// moves black circle 2 pixels to the right//

 
println(inc);
}
