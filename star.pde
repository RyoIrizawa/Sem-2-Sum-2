class star extends base
{
 float speed;
 
 float x2;
 float y2;
 
 float x3;
 float y3;
 
  star()
  {
    x=random(20,1000);
    y=random(20,800);
    
    speed = random(2,5);
    c = color(242,215,76);

  }
  
  void Fall()
  {
    y += speed;
    x-=random(2);
    if(x < 10)
    {
      x=1000;
    }
    if(y > 780)
    {
      y = 0;
    }
    
  }
  
  void move()
  {
    c = color(250,255,8);
    image(star,x,y,random(20,25),random(20,25));
  //  triangle(x-10,y-10,x,y-25,x+10,y-10);
  //  triangle(x-10,y-20,x,y-7,x+10,y-20);
    
  }
  
}