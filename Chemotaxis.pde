Walker [] Eorzea = new Walker[7];

void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < 7; i++)
  {
    Eorzea[i] = new Walker();
  }
}

void draw()
{
 for(int i = 0; i < 7; i++)
 {
   Eorzea[i].show();
   Eorzea[i].walk();
 }
}

class Walker
{
  int myX,myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
   myX = myX + (int)(Math.random()*7)-3;
   myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    fill(255);
    ellipse(myX,myY,30,30);
  }
}
