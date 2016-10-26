PFont font;
String initiate = ("Initiate");

void setup()
{
  size(600,600);
  font = createFont("AGENCY.TTF",32);
}

void draw()
{
  noStroke();
  fill(255);
  rect(width/3, height/2 + 100, 200, 40, 19, 19, 19, 19);
  fill(5, 129, 234, 155);
  rect(width/3, height/2 + 100, 200, 40, 12, 12, 12, 12);
  loadingscreen();
}

//int x = width/3 + 280;

void loadingscreen()
{
  /*fill(0);
  textFont(font);
  int x = 10;
  for( int j = 0; j< initiate.length(); j++)
  {
    for( int i = 0; i< initiate.length(); i++)
    {
      textSize(random(12,36));
      text(initiate.charAt(i), x, height/2 + 130);
      x += textWidth(initiate.charAt(i));
    }
    noLoop();
  }
  */
  
  /*textFont(font);
  text(initiate, x, height/2 + 130);
  x = x-4;
  float w = textWidth(initiate);
  if (x < -w)
  {
    x = width/3 + 125;
  }*/
  
}