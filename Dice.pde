int total;
void setup()
{
  noLoop();
  size(600, 600);
}
void draw()
{
  for(int y = 0; y <= 600; y = y + 60)
  {
    for(int x = 0; x <= 600; x = x + 60)
    {
    Die bob = new Die(x, y);
    bob.show();
    }
  }
  fill(0);
  textSize(100);
  text(total, 210, 325);
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = ((int)(Math.random()*6))+1;
  }
  void show()
  {
    fill(169);
    rect(myX, myY, 60, 60);
    if(num == 1)
    {
      ellipse(myX + 30, myY + 30, 5, 5);
      total = total + 1;
    }
    else if(num == 2)
    {
      ellipse(myX + 40, myY + 30, 5, 5);
      ellipse(myX + 20, myY + 30, 5, 5);
      total = total + 2;
    }
    else if(num == 3)
    {
      ellipse(myX + 30, myY + 30, 5, 5);
      ellipse(myX + 20, myY + 30, 5, 5);
      ellipse(myX + 40, myY + 30, 5, 5);
      total = total + 3;
    }
    else if(num == 4)
    {
      ellipse(myX + 40, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 20, myY + 40, 5, 5);
      total = total + 4;
    }
    else if(num == 5)
    {
      ellipse(myX + 30, myY + 30, 5, 5);
      ellipse(myX + 40, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 20, myY + 40, 5, 5);
      total = total + 5;
    }
    else if(num == 6)
    {
      ellipse(myX + 30, myY + 20, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
      ellipse(myX + 40, myY + 20, 5, 5);
      ellipse(myX + 30, myY + 40, 5, 5);
      ellipse(myX + 20, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      total = total + 6;
    }
  }
}
