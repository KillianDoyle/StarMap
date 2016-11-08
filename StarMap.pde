Table table;

String filename = "HabHYG15ly";

Star star;

ArrayList<Star> data = new ArrayList<Star>();


void setup()
{
  size(800, 800);
  table = loadTable("HabHYG15ly.tsv", "header");
  loadData();
  
}//end setup

void draw()
{
  background(0);
  grid();
  println("loaded " + filename + ".csv");
  println(table.getRowCount() + " total rows in table"); 
}//end draw

void grid()
{
  //grid calculations
  int widthSpace = 50;     
  int heightSpace = 50;
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


void loadData()
{
  for(TableRow row : table.rows())
  {
    int hab = row.getInt("Hab?");
    String DisplayName = row.getString("Name");
    int Distance = row.getInt("Distance");
    int Xg = row.getInt("Xg");
    int Yg = row.getInt("Yg");
    int Zg = row.getInt("Zg");
    int AbsMag = row.getInt("AbsMag");
    
    star = new Star(hab, DisplayName, Distance, Xg, Yg, Zg, AbsMag);
    Star.add(star);
    
  }//end for