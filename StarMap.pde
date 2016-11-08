//Killian Doyle  C15490862  DT228/2  Lab Test 1

Table table;

String filename = "HabHYG15ly";

Star star;

ArrayList<Star> data = new ArrayList<Star>();


void setup()
{
  size(800, 800);
  table = loadTable("HabHYG15ly.tsv", "header, tsv");
  loadData();
  
}//end setup

void draw()
{
  background(0);
  println("loaded " + filename + ".csv");
  println(table.getRowCount() + " total rows in table"); 
  grid();
  plotStars();
  printStars();
 
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
    int Hab = row.getInt("Hab?");
    String DisplayName = row.getString("Display Name");
    int Distance = row.getInt("Distance");
    int Xg = row.getInt("Xg");
    int Yg = row.getInt("Yg");
    int Zg = row.getInt("Zg");
    int AbsMag = row.getInt("AbsMag");
    
    star = new Star(Hab, DisplayName, Distance, Xg, Yg, Zg, AbsMag);
    data.add(star);
  }//end for
}//end loadData()

void printStars()
{
  for (int i = 0; i < data.size(); i++)
  {
    println(data.get(i).Hab + "\t" + data.get(i).DisplayName +"\t" + data.get(i).Distance +"\t" + data.get(i).Xg + "\t" + data.get(i).Yg + "\t" + data.get(i).Zg + "\t" + data.get(i).AbsMag);
  }//end for
}//end printStars()

void plotStars()
{
  for (int i = 0; i < data.size(); i++)
  {
    stroke(255);
    noFill();
    ellipse(data.get(i).Xg, data.get(i).Yg, data.get(i).AbsMag, data.get(i).AbsMag);
  }//end for
}//end plotStars()