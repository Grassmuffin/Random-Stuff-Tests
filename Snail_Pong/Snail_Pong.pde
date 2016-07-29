//A very simple game of pong
int pHeight=50;
int x,y,score=0;
int changeX=-15;
int changeY=-15;
int gameOver=0;
int hx = x-10;
int hy = y+5;
void setup()
{
  size(1980, 950);
  x=(int)random(width);
  y=height-pHeight;
}
void draw()
{
  background(201);
  if(gameOver==0)
  {
     
    text("Not Deads:"+score+"",50,50);
    rect(mouseX,height-pHeight,200,40);
    //shell
fill(#957242);
ellipse(x+72,y+20,85,95);

ellipse(x+72,y+20,55,65);

ellipse(x+72,y+20,25,35);

//eye
fill(mouseX+43,215,mouseX/4);
ellipse(x+5,y+9,14,14);

//body
fill(#A09851);
beginShape();
vertex(x,y);
vertex(x+15,y+5);
vertex(x+15,y+20);
vertex(x+25,y+45);
vertex(x+41,y+52);
vertex(x+68,y+48);
vertex(x+90,y+40);
vertex(x+108,y+56);
vertex(x+137,y+70);
vertex(x+20,y+70);
vertex(x+10,y+60);
vertex(x+15,y+50);
vertex(x+10,y+20);
endShape();

//hat
fill(#363535);
beginShape();
vertex(hx,hy);
vertex(hx,hy-5);
vertex(hx+7,hy-5);
vertex(hx+7,hy-20);
vertex(hx+27,hy-20);
vertex(hx+27,hy-5);
vertex(hx+37,hy-5);
vertex(hx+37,hy);
endShape();
    x=x+changeX;
    y=y+changeY;
    if(x<0 | x>width)
    {
      changeX=-changeX;
    }
    if(y<0)
    {
    changeY=-changeY;
    }
    if(y>height-pHeight)
    {
      //check whether it is falling inside the rectangle or not
      if(x>mouseX && x<mouseX+500)
      {
        changeY=-changeY; //bounce back
        score++;
      }
      else
      {
        gameOver = 1;
      }
    }
  }
  else
  {
  
  }
 
}
void mouseClicked()
{
  changeY=-changeY;
  score=0;
  gameOver=0;
}