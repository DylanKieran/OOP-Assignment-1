class Button
{
  //Fields
  String buttonText;
  float rectX;
  float rectY;
  float rectWidth;
  float rectHeight;
  color rectColour;
  boolean rectOver;
  
  //Constructor
  Button(String butonText, float rectX, float rectY, float rectWidth, float rectHeight, color rectColour, boolean rectOver)
  {
    this.buttonText = buttonText;
    this.rectX = rectX;
    this.rectY = rectY;
    this.rectWidth = rectWidth;
    this.rectHeight = rectHeight;
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
    noStroke();
    rect(rectX, rectY, rectWidth, rectHeight);
  }
  
  void update() 
  {
    if ( overRect(rectX, rectY, rectWidth, rectHeight) )
    {
      rectOver = true;
    }
    else
    {
      rectOver =false;
      
     // textSize(32);
      //textAlign(CENTER);
      //text(buttonText,rectX,rectY);
    }
  }
  
  boolean overRect(float x, float y, float width, float height) 
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