
String[] dayOfTheWeek = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
int[] day = new int[7]; // this is how to set up an array with empty values/ null values
int[] ages = {35, 35, 24, 22, 21, 20, 20, 15, 107, 21};


void setup()
{
  BubbleSort();
  for(int i =0; i < ages.length; i++)
  {
    println(ages[i]);
  }
 /* for(int i = 0; i < dayOfTheWeek.length; i++ )
  {
    
    println(dayOfTheWeek[i]);
    
  }*/
  
}

//void Average()
/*{
  
    int average = 0;
  for(int i =0; i < ages.length; i++)
  {
    average += ages[i];
  }
  average = average / ages.length;
  println(average);
  
}*/
