class Asteroid extends Floater  
{   
    private int rotate_speed;
    public Asteroid()
    {
      corners = 5;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = -8;
      yCorners[0] = 6;
      xCorners[1] = 0;
      yCorners[1] = 7;
      xCorners[2] = 6;
      yCorners[2] = 8;
      xCorners[3] = 8;
      yCorners[3] = -7;
      xCorners[4] = -8;
      yCorners[4] = -7;
      myColor = (125);
      myCenterX =  Math.random()*500;
      myCenterY =  Math.random()*500;
      myXspeed = Math.random()*2;
      myYspeed = Math.random()*2;
      myPointDirection = Math.random()*360;
      rotate_speed = (int)(Math.random()*10);
    } 
    public double getmycenterX()
    {
      return myCenterX;
    }
    public double getmycenterY()
    {
      return myCenterY;
    }
    public void move()
    {
      turn(rotate_speed);
      super.move();
    } 
}
