float r;
float s;
float z1;
float z2;
float z3;
float z4;
float z5;
float z6;
float z7;
float z8;
float ex, ey;

float NS;

PImage man;
PImage city;
PImage prev;
PImage next;

PImage alien;
PImage can1;
PImage can2;
PImage can3;
PImage can4;
PImage can5;

PImage space;
PImage earth;
PImage planet1;
PImage planet2;
PImage planet3;
PImage planet4;
PImage fun;

PImage alien1;
int rand;
PImage star;
PImage sleep;

rain ra;
ArrayList<rain> rains = new ArrayList<rain>();

base b;
ArrayList<base> bases = new ArrayList<base>();

alien a;
ArrayList<alien> aliens = new ArrayList<alien>();

int starcount= 80;
star[] stars = new star[starcount];

import processing.sound.*;
SoundFile file;
String audioName = "Music.mp3";
String audioName1 = "sleep.mp3";

void setup()
{
  size(800,800);
  loadimages();
  ra = new rain();
  b = new base();
  a = new alien();
  
  for(int i=0; i < starcount; i++)
  {
    stars[i] = new star();
  }
  
  if(NS<3000)
  {
  file = new SoundFile(this, audioName);
  file.play();
  }
}

void draw()
{
  first();
  sec();
  fourth();
  third();
  fifth();
  sixth();
}

void first()
{
  image(city,0-NS,0,800,800);
  image(man,330-NS,630,130,160);
  
   fill(0,0,0);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String a="Once upon a time, there was";
    String a1="a man who could tavel anywhere.";
    String a2="Use your arrowkeys to move on.";
text(a,  0, 60);
text(a1,  0, 120);
textSize(20);
fill(255,0,34);
text(a2,0,200);

 ra.update();

    rains.add(new rain(300-NS, -50));
    rains.add(new rain(600-NS, -50));
  
  for(int i = rains.size()-1; i >= 0; i--)
  {
    //particles[i] does not work with array list
    rains.get(i).update();
  
    if(rains.get(i).position.y > height)
    {
      rains.remove(i);
    }
  }
}


void sec()
{
   image(alien,800-NS,0,800,800);
  
  a.update();
  
  
    aliens.add(new alien(1153-NS, 236));
    aliens.add(new alien(1183-NS, 240));
    aliens.add(new alien(1213-NS, 240));
    aliens.add(new alien(1243-NS, 236));
if(NS==800)
{
  for(int i = aliens.size()-1; i >= 0; i--)
  {
    aliens.get(i).update();
    
    if(aliens.get(i).position.y > (height))
    {
      aliens.remove(i);
    }
  }
}
  
  image(man,1130-NS,600,120,170);
  
  fill(255,255,255);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String b="He first met with the Aliens and showed";
    String b1="his transportation skills.";
    String b2="The aliens thought that he was god.";
    String b3="And offered him a lot of candy";
text(b,  0, 860-NS);
text(b1,  0, 920-NS);
text(b2,  0, 980-NS);
text(b3,  0, 1040-NS);
}

void third()
{
  image(alien,1600-NS,0,800,800);
  image(man, 1800-NS,600,120,170);
  image(alien1, 2060-NS,600,180,170);
  image(alien1, 2150-NS,540,140,200);
  image(can4, 1900-NS,550,200,200);
  
  fill(245,27,104);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String c="The man was tired with life on earth";
    String c1="So he offered them a giant candy";
    String c2="and asked if he could go on a";
    String c3="trip with them.";
text(c,  0, 1660-NS);
text(c1,  0, 1720-NS);
text(c2,  0, 1780-NS);
text(c3,  0, 1840-NS);
}

void fourth()
{
{
  image(space,2400-NS,0,800,800);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(r));
  fill(255, 235, 3);
  ellipse(ex+2400-NS, ey, 30, 30);
  
  translate(ex+2400-NS,ey);
  rotate(radians(-r*3));
  fill(255);
  image(earth,2425-NS,ey,15,15);
  
  popMatrix();
  
  r += 0.5;
}
  {
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z1));
  fill(0, 255, 100);
  image(planet1,2500-NS, 100, 20, 20);
  
  popMatrix();
  z1 += 1;
  }
  
  {
    pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z2));
  fill(0, 255, 100);
  image(planet2,2630-NS, 120, 40, 40);
  
  popMatrix();
  z2 += 6;
  
}

{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z3));
  fill(0, 255, 100);
  image(planet3,2720-NS, 150, 50, 50);
  
  popMatrix();
  z3 += 3;
}

{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z4));
  fill(0, 255, 100);
  image(planet4,2690-NS, 80, 30, 30);
  
  popMatrix();
  z4 += 4;
}

{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z5));
  fill(0, 255, 100);
  image(planet2,2530-NS, 210, 15, 15);
  
  popMatrix();
  z5 += 4.62;
}

{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z7));
  fill(0, 255, 100);
  image(fun,2450-NS, 100, 100, 100);
  
  popMatrix();
  z7 += 5;
  }
  
  fill(255,255,255);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String d="Together they had fun touring";
    String d1="around space and visiting places.";
    String d2="However, the man needed to go home";
    String d3="as his family was waiting for him.";
text(d,  0, 2460-NS);
text(d1,  0, 2520-NS);
text(d2,  0, 2580-NS);
text(d3,  0, 2640-NS);

}

void fifth()
{
  image(alien,3200-NS,0,800,800);
  
  if(NS==3200)
  {
   for(int i=0; i < starcount; i++)
  {
    stars[i].Fall();
    stars[i].move();
  }
  }

  image(man, 3340-NS,600,120,170);
  image(alien1, 3660-NS,600,180,170);
  image(alien1, 3750-NS,540,140,200);
  
   fill(255,255,255);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String e="The man and Alien were both tired.";
    String e1="They said goodbye to eachother ";
    String e2="and went back to their home.";
text(e,  0, 3260-NS);
text(e1,  0, 3320-NS);
text(e2,  0, 3380-NS);
  
}

void sixth()
{
  image(sleep,4000-NS,0,800,800);
   fill(255,255,255);
   PFont f= createFont("Georgina", 43);
    textFont(f);
    textSize(40);
    String f1="The man came back to his house";
    String f2="and slept with his son.";
    String f3="THE END.";
text(f1,  0, 4060-NS);
text(f2,  0, 4120-NS);

textSize(75);
fill(255,0,34);
text(f3,  200, 4600-NS);
  
}

void loadimages()
{
  man=loadImage("man.png");
  city=loadImage("city.png");
  prev=loadImage("prev.png");
  next=loadImage("next.png");
  alien=loadImage("alien.jpg");
  can1=loadImage("can1.png");
  can2=loadImage("can2.png");
  can3=loadImage("can3.png");
  can4=loadImage("can4.png");
  can5=loadImage("can5.png");
  alien1=loadImage("alien.png");
  space=loadImage("space.jpg");
  earth=loadImage("earth.png");
  planet1=loadImage("planet1.png");
  planet2=loadImage("planet2.png");
  planet3=loadImage("planet3.png");
  planet4=loadImage("planet4.png");
  fun=loadImage("fun.png");
  star=loadImage("star.png");
  sleep=loadImage("sleep.png");
}

void keyPressed()
{
  if (key == CODED)
    {
if (keyCode == RIGHT) 
    {
      if(NS<3999)
      {
      NS=NS+800;
      image(next,700,730,100,70);
      }
    }
 if(NS>400)
 {
if (keyCode == LEFT) 
    {
      NS=NS-800;
      image(prev,0,730,100,70);
    }
    }
    }
  

}