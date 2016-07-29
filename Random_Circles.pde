size(800,800);

int x;

for (int i = 1; i<=10; i++)
{
  int cR = (int)random(255);
  int cB = (int)random(255);
  int cG = (int)random(255);
  fill(cR,cB,cG);
 
  x = (int)random(400);
  ellipse(x,x,x,x);
}