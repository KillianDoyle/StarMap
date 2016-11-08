//class called Star to encapsulate the columns of interest from a single row from the file

class Star
{
 //variables
  int Hab;
  String DisplayName;
  int Distance;
  int Xg;
  int Yg;
  int Zg;
  int AbsMag;

   Star(int Hab, String DisplayName, int Distance, int Xg, int Yg, int Zg, int AbsMag)
   {
      this.Hab = Hab;
      this.DisplayName = DisplayName;
      this.Distance = Distance;
      this.Xg = Xg;
      this.Yg = Yg;
      this.Zg = Zg;
      this.AbsMag = AbsMag;
   }
   
  //To string method
  String toString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance + "\t" + Xg + "\t" + Yg + "\t" + Zg  + "\t" + AbsMag;
  }
}