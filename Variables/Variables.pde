/* -> Starting point of multiline comment. This puts lines of code into text for commenting.
//-> this puts a singular line of code into text, also for commenting.

print("Hello Diva");// basic command for debugging

char my Char = 'H'
String myString = "Hello World"; // String is a sequence of individual characters. It's a variable for words

"=" means setting the value
"==" means comparing the values

float myFloat = 3.14f; //A number with a decimal 

int myInt = 42; //Sets the variable into intergers, in other words whole numbers 1-n...

println(myInt +43); //"println" prints the result and moves to the next line

boolean myBool = true; 

//fullScreen(); -> makes the canvas the size of the screen
This ends multiline commenting -> */ 

void setup()// equivalent to start in unity, begin in unreal
{ 
  
  rectMode(CORNERS);  // Sets rectMode to CORNERS
  size(500,500); //sets the canvas size
  frameRate(5); /*sets the number of frames to be displayed every second. 
  Lower the number is the slower the frame rate will be, vice versa.*/
  
  ellipseMode(CENTER);  // Sets ellipseMode to CENTER

}



void draw()//Equivalent to update in Unity
{
  background(250,250,224);
  
  int rnd = (int)random(20, 250); //randomises this interger between 20 and 249
  fill(rnd, rnd * 0.2, rnd * 0.3);
  
  
  ellipse(100, 200, 60, 60);  
  ellipse(400, 200, 120, 120);
  fill(0,0,0);
  ellipse(400, 200, 60, 60);
  quad(125, 400, 200, 200, 276, 200, 325, 400);
  fill(250);
  triangle(200, 200, 215, 225, 235, 200);
  triangle(245, 200, 260, 225, 275, 200);
  
    
  /*
  background(0,70,90);
  fill(255,255,224);
  rect(posX,posY,size * 2,size);
  posY = posY + 1;
  posX = posX + 1;
  size = size + 1;
  */
}
