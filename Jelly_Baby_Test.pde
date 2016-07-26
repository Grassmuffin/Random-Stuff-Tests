PImage img;
PImage bg;


void setup()
{
  size(476,356);
  img = loadImage("Jelly_Babies.png");
  bg = loadImage("Fourth_Doctor_Jelly_Baby.jpg");
  image(bg,0,0);
  
}

void draw()
{
  
  image(img,mouseX-30,mouseY-40);
  
  
}