
void setup()
{
  size(600,600);
  smooth();
  font = createFont("Adam.otf", 32);
  background(1,12,18);
}

//Program States
int InitialState = 0;
int TimeScreen = 1;
int LoadingScreen = 2;
int VaultScreen = 3;
int State = InitialState;

//Declaring font
PFont font;

//Variables for BackgroundCircles
float xCircle = 0;
float yCircle = 0;

void draw()
{
  if(State == InitialState)
  {
    BackgroundLines();
    
    //Initialise Button Call
    Button initialise = new Button("Initialise", width/2 - 70, height/4 - 7,width/4 + 4,height/4 - 36,width/2 - 8, 34,color(1,12,18), false);
          
    //Initialise Button Start Screen
      initialise.update();
      initialise.fillRect();
      initialise.overRect(mouseX,mouseY,width/2 - 8, 34);
      initialise.mouseclick();
  }
  else if(State == TimeScreen)
  {
    background(1,12,18);
    TimerScreenBackground();
  }
  else if(State == LoadingScreen)
  {
    
  }
  else if(State == VaultScreen)
  {
    
  }
  
}

void BackgroundLines()
{
   //Draw Background Lines
   stroke(11,92,131);
   
   //Lines going across
   line(0,  height/4 - 40, width, height/4 - 40); //Highest line
   line(0,  height/4 , width, height/4); //Next on down
   line(0,  height/4 + 5, width, height/4 + 5); //3rd Highest
   
   //Lines going across and low
   line(0,  height - 200, width, height - 200);
   line(0,  height - 205, width, height - 205);
   line(0,  height - 210, width, height - 210);
   line(0,  height - 180, width, height - 180);
   
   //Lines going downwards
   line(width/4 - 70,  0, width/4 -70, height);
   line(width/4 - 50,  0, width/4 - 50, height);
   line(width/4,  0, width/4, height);
   line(width/4 + width/2,  0, width/4 + width/2, height);
   line(width/4 + width/2 + 5,  0, width/4 + width/2 + 5, height);
   
   //Thick lines
   stroke(19, 161, 229);
   line(width/4, height/4 - 40, width/4 + width/2, height/4 - 40);
   line(width/4, height/4, width/4 + width/2, height/4);
   
   
   //Small rects beside thick lines
   fill(19, 161, 229);
   noStroke();
   //Left side
   rect(width/4 - 2, height/4 - 42, 5, 5);
   rect(width/4 + width/2 - 2, height/4 - 42, 5, 5);
   //Right side
   rect(width/4 - 2, height/4 - 2, 5, 5);
   rect(width/4 + width/2 - 2, height/4 - 2, 5, 5);
   
   //Red rect
   fill(255,0,0);
   stroke(255,0,0);
   line(width/4, height/4 + 15,width/4 + width/2, height/4 + 15);
   noStroke();
   rect(width/4, height/4 + 20, 301, 10);
   //Bottom Red
   rect(width/4, height - 195, 301, 5);
}

void TimerScreenBackground()
{

   //Draw Background Lines
   stroke(19, 161, 229, 50);
   
   //Lines going across
   line(0,  height/4 , width, height/4); //2nd
   //line(0,  height/4 - 40, width, height/4 - 40); //Highest line
   //line(0,  height/4 + 5, width, height/4 + 5); //3rd Highest
   
   //Lines going across and low
   line(0,  height - 200, width, height - 200);
   //line(0,  height - 215, width, height - 215); //Use for thick Line
   line(0,  height - 260, width, height - 260);
   line(0,  height - 275, width, height - 275);
   line(0,  height - 80, width, height - 80);
   
   //Lines going downwards
   //line(width/4 - 100,  0, width/4 -100, height);
   line(width/4 - 50,  height/4, width/4 - 50, height/2 + 100);
   line(width/4,  0, width/4, height/2 + 220); //Left Center
   
   line(width/4 + width/2,  0, width/4 + width/2, height);//Right Center
   line(width/4 + width/2 + 40,  0, width/4 + width/2 + 40, height);
   line(width/4 + width/2 + 100,  0, width/4 + width/2 + 100, height);
   
   //Thick lines
   stroke(19, 161, 229);
   line(width/4,  height - 215, width/4 + width/2, height - 215);
   line(width/4, height - 260, width/4 + width/2, height - 260);
   
   //Thick Rect
   fill(19, 161, 229);
   rect(width/4, height - 202, 300, 3);
   noFill();
   noStroke();
   
   //Small rects beside thick lines
   fill(19, 161, 229);
   noStroke();
   //Left side
   rect(width/4 - 2, height - 216, 3, 3);
   rect(width/4 + width/2 - 2,  height - 216, 3, 3);
   //Right side
   rect(width/4 - 2, height - 261, 3, 3);
   rect(width/4 + width/2 - 2, height - 261, 3, 3);
   
   //Top small rects
   rect(width/4 - 2, height/4 - 1, 3, 3);
   rect(width/4 + width/2 - 2, height/4 - 1, 3, 3);
   
   //Red small rects
   fill(255,0,0);
   noStroke();
   //Top
   rect(width/4 + width/2 + 39,  height - 261, 3, 3);
   rect(width/4 + width/2 + 99,  height - 261, 3, 3);
   //Bot
   rect(width/4 + width/2 + 39, height - 201, 3, 3);
   rect(width/4 + width/2 + 99, height - 201, 3, 3);
   

}