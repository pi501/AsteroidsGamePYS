Spaceship ship = new Spaceship();
Star [] sky = new Star[100];
ArrayList <Asteroid> Asteroid_field = new ArrayList();
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
  for (int i = 0; i < 10; i++)
  {
    Asteroid_field.add(new Asteroid());
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
  for (int i = 0; i < 10; i++)
  {
    Asteroid_field.get(i).move();
    Asteroid_field.get(i).show();
    float distance = dist((float)ship.getmycenterX(), (float)ship.getmycenterY(), (float)Asteroid_field.get(i).getmycenterX(), (float)Asteroid_field.get(i).getmycenterY());
    if (distance < 10)
    {
      Asteroid_field.remove(i);
      Asteroid_field.add(new Asteroid());
    } 
  }
}
