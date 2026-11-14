class Star //note that this class does NOT extend Floater
{
  private int size;
  private int Color;
  private int MyX;
  private int MyY;
  public Star()
  {
    MyX = (int)(Math.random()*500);
    MyY = (int)(Math.random()*500);
    size = 5;
    Color = (int)(Math.random()*255); //, Math.random()*255,Math.random()*255);
  }
  public void show()
  {
    fill(Color,Color,Color);
    ellipse(MyX, MyY, size, size);
  }
}
