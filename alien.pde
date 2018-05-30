class alien extends base
{

  alien()
  {
    position= new PVector(width/2,height/2);
    direction= new PVector(4,0);
    
  }
  
  alien(float _nX, float _nY)
  {
    position = new PVector(_nX, _nY);
    direction = new PVector(random(-2,1),random(5,3));
    c = color(random(0,255),random(0,255),random(0,255));
  }
  
  
  void update()
  {
    position.add(direction);
    direction.add(new PVector(0,0.2));
    fill(c);
    image(can1,position.x+10,position.y,20,10);
    image(can2,position.x+1,position.y,random(7,12),random(7,12));
    image(can3,position.x+6,position.y,random(7,12),random(7,12));
    image(can4,position.x,position.y+10,random(7,12),random(7,12));
    image(can5,position.x,position.y+5,random(7,12),random(7,12));
  }
  
}