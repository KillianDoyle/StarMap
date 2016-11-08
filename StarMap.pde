void setup()
{
  size(800, 800);
}//end setup

void draw()
{
  background(0);
  grid();
}//end draw

void grid()
{
  //grid calculations
  int widthSpace = 50;     
  int heightSpace = 50;
  strokeWeight(1);
  stroke(215, 0, 210);    //set line color
  
  for(int i = 150; i < width-140; i += widthSpace)
  { 
     line(i, 150, i, height-150);
  }//end for loop

  for(int w = 150; w <height-140; w += heightSpace)
   {
     line(150, w, width-150, w);
   }//end for loop
}//end grid()