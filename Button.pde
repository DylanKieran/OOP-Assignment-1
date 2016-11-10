class Button
{
  //Fields
  int rectX;
  int rectY;
  int rectSize;
  color rectColour;
  boolean rectOver;
  
  //Constructor
  Button(int rectX, int rectY, int rectSize, color rectColour, boolean rectOver)
  {
    this.rectX = rectX;
    this.rectY = rectY;
    this.rectSize = rectSize;
    this.rectColour = rectColour;
    this.rectOver = rectOver;
  }
  
  void fillRect()
  {
    color rectHighlight  = color(#1B2EF0);
    
    if (rectOver) 
    {
      fill(rectHighlight);
    } else 
    {
      fill(rectColour);
    }
    stroke(255);
    rect(rectX, rectY, rectSize, rectSize);
  }
  
  void update(int x, int y) 
  {
    if ( overRect(rectX, rectY, rectSize, rectSize) )
    {
      rectOver = true;
    }
    else
    {
      rectOver =false;
    }
  }
  
  boolean overRect(int x, int y, int width, int height) 
  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) 
      {
        return true;
      } 
      else 
      {
        return false;
      }
  }
}