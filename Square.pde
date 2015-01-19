class Square
{
  //int index;
  color colour;
  PVector pos;
  boolean alive;
  float w, h;
  
  
  Square()
  {
    this(color(0, 0, 0), 0, 0);
  }
  
  Square(color colour, float x, float y)
  {
    //this.index = index;
    this.colour = colour;
    
    pos = new PVector(x, y);
  }
  
  void update()
  {
    
  }
  
  void display(boolean alive)
  {
    float dim = 0;
    
    if(alive)
    {
      dim = 1;
    }
    else
    {
      dim = 0.5;
    }
    stroke(red(colour) * dim, blue(colour) * dim, green(colour) * dim);
    fill(red(colour) * dim, blue(colour) * dim, green(colour) * dim);
    rect(pos.x, pos.y, halfWidth, halfHeight);
  }
  
}
