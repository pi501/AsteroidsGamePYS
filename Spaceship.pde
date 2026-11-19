class Spaceship extends Floater  
{   
    public Spaceship()
    {
      corners = 3;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = -8;
      yCorners[0] = 8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = -8;
      myColor = (255);
      myCenterX =  50;
      myCenterY =  50;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    } 
    public void setmyCenterX(int n)
    {
      myCenterX = n;
    }
    public void setmyCenterY(int n)
    {
      myCenterY = n;
    }
    public double getmycenterX()
    {
      return myCenterX;
    }
    public double getmycenterY()
    {
      return myCenterY;
    }
    public void hyperspace()
    {
      myXspeed = 0;
      myYspeed = 0;
      setmyCenterX((int)(Math.random()*500));
      setmyCenterY((int)(Math.random()*500));
    }
}
