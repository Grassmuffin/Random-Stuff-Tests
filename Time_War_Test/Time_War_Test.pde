PImage bg;
PImage img;

void setup()
{
  size(1000,563);
  bg = loadImage("Gallifrey_Background.jpg");
  img = loadImage("Dalek.png");
  
}

void draw()
{
  image (bg,0,0);
  image (img,mouseX,mouseY);
  
  if (mousePressed = true);
  {
    
}