Spaceship ship = new Spaceship();
Star [] sky = new Star[100];
public void keyPressed()
  {
    if (key == 'a')
    {
      ship.turn(-10);
    }
    if (key == 'd')
    {
      ship.turn(10);
    }
    if (key == 'w')
    {
      ship.accelerate(0.5);
    }
    if (key == 'q')
    {
      ship.hyperspace(); 
    }
  }
public void setup() 
{
  size(500,500);
  for (int i = 0; i < 100; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0,0,0);
  for (int i = 0; i < 100; i++)
  {
    sky[i].show();
  }
  ship.show();
  ship.move();
}
