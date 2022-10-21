PImage img;
Scion [] Eorzea = new Scion[70];

void setup()
{
  size(500,500);
  for(int i = 0; i < Eorzea.length; i++)
  {
    Eorzea[i] = new Scion();
  }
  img = loadImage("terrified.png");
}

void draw()
{
 //background(0);
 image(img,0,0);
 for(int i = 0; i < Eorzea.length; i++)
 {
   Eorzea[i].show();
   Eorzea[i].walk();
 }
}

class Scion
{
  int myX,myY;
  Scion()
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
    stroke(255,0,0);
    strokeWeight(3);
    noFill();
    //fill(255, 0, 0);
    ellipse(myX,myY,15,15);
    line(myX,myY-12,myX,myY+12);
    line(myX+12,myY,myX-12,myY);
  }
}
