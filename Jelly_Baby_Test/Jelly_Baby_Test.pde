PImage img;
PImage bg;
PFont font;


void setup()
{
  size(476,356);
  img = loadImage("Jelly_Babies.png");
  bg = loadImage("Fourth_Doctor_Jelly_Baby.jpg");
 
  font = loadFont("Superclarendon-Bold-48.vlw");
  textFont(font, 24);
}

void draw()
{
  
  image(img,mouseX-30,mouseY-40);
  text("Would You Like A Jelly Baby?",20,200);
  
}