class rain
{
  PVector position;
  PVector direction;
  color c;

  rain()
  {
    position= new PVector(width/2,height/2);
    direction= new PVector(4,0);
    //c= color(255,0,255);
    
  }
  
  rain(float _nX, float _nY)
  {
    position = new PVector(_nX, _nY);
    direction = new PVector(random(-5,5),random(-8,3));
    c = color(105,237,247);
  }
  
  
  void update()
  {
    position.add(direction);
    direction.add(new PVector(0,0.2));
    fill(c);
    ellipse(position.x,position.y,random(10),random(10,15));
  }
  
}