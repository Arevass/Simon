
ArrayList<Square> squares = new ArrayList<Square>();

void setup()
{
  size(500,500);
  
  halfWidth = width / 2;
  halfHeight = height / 2;
  
  /*
  for(int i = 0; i < 4; i++)
  {
    color colour = color(random(0,255), random(0,255), random(0,255));
    Square s = new Square(i, colour, pos);
    squares.add(s);
  }
  */
  
  squares.add(new Square(color(0, 255, 0), 0, 0));
  squares.add(new Square(color(255, 0, 0), halfWidth, 0));
  squares.add(new Square(color(0, 0, 255), 0, halfHeight));
  squares.add(new Square(color(255, 255, 0), halfWidth, halfHeight));
}

float halfWidth, halfHeight;

void draw()
{
  for(Square square:squares)
  {
    square.update();
    square.display(true);
  }
}
