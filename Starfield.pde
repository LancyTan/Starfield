Particle [] anney = new Particle[300];
void setup()
{
	background(0);
  size(500,500);
  //anney = new Particle[300];
  for (int i = 0; i < anney.length; i++)
  {
  anney[i] = new NormalParticle();

  }
  anney[0] = new OddballParticle();
  anney[1] = new JumboParticle();
}
void draw()
{
	background(0,0,0);
  for (int i = 0; i < anney.length;i++)
  {
    anney[i].show();
    anney[i].move();
}
}
class NormalParticle implements Particle//implements Particle
{
  double myX, myY, myDir, mySpeed;
  int myG, myR,myB;
  NormalParticle() 
  {
    myX = 250;
    myY = 250;
    myDir = Math.random()*2*Math.PI;
    mySpeed = Math.random()*6+1;
    myR = (int)(Math.random() * 50) +80;
    myG = (int)(Math.random() * 100) +111;
    myB = (int)(Math.random() * 20) +200;
  }
	//your code here
  public void show()
  {
   noStroke();
   fill(myR,myG,myB);
   ellipse((float)myX,(float)myY, 7,7);
  }
//move show
  public void move()
  {
    myX = myX + Math.cos(myDir)*mySpeed;
    myY = myY + Math.sin(myDir)*mySpeed;
  }
}    
interface Particle
{
	public void move();
  public void show();
  
  //your code here
}
void mouseClicked()
{
  for (int i = 0; i < anney.length; i++)
  {
  anney[i] = new NormalParticle();

  }
  anney[0] = new OddballParticle();
  anney[1] = new JumboParticle();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here

  double myX, myY, myDir, mySpeed;
  int myG, myR,myB;
  OddballParticle() 
  {
    myX = 250;
    myY = 250;
    myDir = Math.random()*2*Math.PI;
    mySpeed = Math.random()*6+1;
    myR = (int)(Math.random() * 50) +80;
    myG = (int)(Math.random() * 100) +111;
    myB = (int)(Math.random() * 20) +200;
  }
  //your code here
  public void show()
  {
   noStroke();
   fill(myR,myG,myB);
   ellipse((float)myX,(float)myY, 14,14);
  }
//move show
  public void move()
  {
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }
} 


class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
void show()
{
fill(255);
ellipse((float)myX,(float)myY,20,20);
}
}