
void setup()
{
  size(600,600);
  smooth();
  font = createFont("Adam.otf", 32);
  background(1,12,18);
  
  //Load Images
  Bird = loadImage("Bird.png");
  NoTarget = loadImage("NotTarget.png");
  TargetLocated = loadImage("TargetLocked.png");
  NorthKorea = loadImage("NorthKorea.png");
  
  //Timer Values
  begin = millis();
  time = duration = 10;
  
}

//Load Images
PImage Bird;
PImage NoTarget;
PImage TargetLocated;
PImage NorthKorea;

//Program States
int InitialState = 0;
int LoadingScreen = 1;
int AsiaScreen = 2;
int LaunchSeq = 3;
int State = InitialState;

//Declaring font
PFont font;

//Variables for Pulse Circle
float PulseDiameter = 5;
float opacity = 255;

//Variables for Timer
int begin;
int duration;
int time;

//Variables for LoadingWheel
int ang = 1;
int ang2 = 2;

//Variables for background Circles
int Xpos;
int Ypos;

//Variables for Loading Screen
float LoadNeg = 0;
float LoadPos = 0;
int PercentageLoading = 0;

//Variables for clock
int h;
int m;
int s;

//Variables for RenderLine
float RenderY = 0;

//Asia Screen Variables
boolean hasClicked;

//Variables for AsiaLines
float UpperKoreaY = 0;
float LowerKoreaY = 0;
float LeftKoreaX = 0;
float RightKoreaX = 0;
float TargetX = -100;
float TargetY = -100;
float LattX,LattY,LongX,LongY = -100;

void draw()
{
  if(State == InitialState)
  {
    background(1,12,18);
    RenderLine();
    BackgroundCircles();
    BackgroundLines();
    LoadBird();
    Clock();

    
    //Initialise Button Call
    Button initialise = new Button("Initialise", width/2 - 70, height/4 - 7,width/4 + 4,height/4 - 36,width/2 - 8, 34,color(1,12,18), false, InitialState, LoadingScreen);
          
    //Initialise Button Start Screen
    initialise.update();
    initialise.fillRect();
    initialise.overRect(mouseX,mouseY,width/2 - 8, 34);
    initialise.mouseclick();
  }
  else if(State == LoadingScreen)
  {
    background(1,12,18);
    BackgroundCircles();
    TimerScreenBackground();
    PulseCircle();
    Loading();
  }
  else if(State == AsiaScreen)
  {
    background(1,12,18);
    LoadAsia();
    BackgroundCircles();
    AsiaLines();
    RenderLine();
    
    if(hasClicked)
    {
      //Launch Button Call
      Button Launch = new Button("Launch", width - 130, height - 40 , width - 132, height - 66, 160, 30, color(1,12,18,255), false, AsiaScreen, LaunchSeq);
            
      //Initialise Button Start Screen
      Launch.update();
      Launch.fillRect();
      Launch.overRect(mouseX,mouseY,width/2 - 8, 34);
      Launch.mouseclick();
    }
    
  }
  else if(State == LaunchSeq)
  {
    background(1,12,18);
    BackgroundCircles();
    LoadNorthKorea();
    LoadKoreaLines();
    PulseCircleKorea();
    LoadingWheel();
  }
  
}

void BackgroundLines()
{
   //Draw Background Lines
   //stroke(11,92,140);
   stroke(#0C3352);
   
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

void PulseCircle()
{
    noFill();
    smooth();
    stroke(19, 161, 229, opacity);
    
    if(PulseDiameter != 100)
    {
      ellipse(width/4 + width/2 + 69, height - 230, PulseDiameter, PulseDiameter);
      PulseDiameter++;
      opacity -= 4;
    }
    else
    {
      PulseDiameter = 0;
      opacity = 255;
    }
}

/*void Timer()
{
  textFont(font);
  textSize(38);
  if(State == TimeScreen)
  {
    if (time > 0)  
      {
        time = duration - millis()/1000;
      }
  }
  fill(255,0,0);
  text(time, width/2 - 14, height/2 - 45);
}*/

void LoadingWheel()
{
  stroke(255,0,0);
  strokeWeight(5);
  smooth();
    
  noFill();
  
  ang += 2;
  ang2 += 3;
  arc(width - 50, height - 50, 60, 60, radians(ang2 + 40), radians(ang2 + 180));
  arc(width - 50, height - 50, 40, 40, radians(ang + 80), radians(ang + 200));
  arc(width - 50, height - 50, 20, 20, radians(-ang2 + 40), radians(-ang2 + 180));
  
  strokeWeight(1);
  noStroke();
  
}

void LoadBird()
{
  tint(255, 127);
  Bird.resize(200,200);
  image(Bird, width/4 + 49, height/2 - 115);
}

void BackgroundCircles()
{
  noStroke();
  fill(19, 161, 229);
  for(Xpos = 5; Xpos < width; Xpos += 40)
  {
    for(Ypos = 5; Ypos < height; Ypos += 40)
    {
      ellipse(Xpos, Ypos, 1 , 1);
    }
  }
}

void Loading()
{
  //Loading Text
  fill(19, 161, 229, 150);
  textFont(font);
  textSize(22);

  if (LoadPos <= 25)
  {
    text("Loading.",width/2 - 52, height/2 + 75);
  }
  else if (LoadPos < 50 && LoadPos >= 25)
  {
    text("Loading..",width/2 - 52, height/2 + 75);
  }
  else if (LoadPos < 75 && LoadPos >= 50)
  {
    text("Loading...",width/2 - 52, height/2 + 75);
  }
  else if (LoadPos <= 100 && LoadPos >= 75)
  {
    text("Loading.",width/2 - 52, height/2 + 75);
  }
  else if (LoadPos <= 125 && LoadPos >= 100)
  {
    text("Loading..",width/2 - 52, height/2 + 75);
  }
  else if (LoadPos <= 150 && LoadPos >= 125)
  {
    text("Loading...",width/2 - 52, height/2 + 75);
  }
  
  //Loading Bar
  stroke(0);
  fill(255,0,0);
  noStroke();
  rect(width/2, height/2 - 70, LoadNeg, 8);
  rect(width/2, height/2 - 70, LoadPos, 8);
  
  LoadPos +=0.5;
  if (LoadPos >= 150)
  {
     LoadPos = 150;
  }
  
  LoadNeg -= 0.5;
  if (LoadNeg <= -150)
  {
     LoadNeg = -150;
  }
  
  //Percentage
  PercentageLoading = int ((LoadPos/150)*(100));
  text(PercentageLoading + "%", width/4 + 12, height/3 - 58);
  
  if(PercentageLoading == 100)
  {
    delay(300);
    State = 2;
  }
}


void Clock()
{
  h = hour();
  m = minute();
  s = second();
  
  textSize(24);
  fill(19, 161, 229, 80);
  textFont(font);
  text (h + ":" + nf(m, 2) + ":" + nf(s, 2), width/2 - 58, height/4 - 80);
}

void RenderLine()
{
  stroke(255,0,0,100);
  line(0, RenderY, width, RenderY);
  
  RenderY += 1;
  if (RenderY > height) 
  {
    RenderY = 0; 
  }
  
}

void mousePressed()
{
  if(State == AsiaScreen)
  {
     hasClicked = true;
  }
}

void LoadAsia()
{
  tint(255, 127);
  image(hasClicked? TargetLocated : NoTarget, width/4 - 110, height/2 - 240);
}

void AsiaLines()
{
  
   //Draw Background Lines
   stroke(19, 161, 229, 50);
   
   if (mousePressed)
   {
       UpperKoreaY = height/4 + 88;
       LowerKoreaY = height/4 + 28;
       RightKoreaX = width/4 + width/2 + 10;
       LeftKoreaX = width/4 + width/2 - 60;
       TargetX = 10;
       TargetY = 40;
       LattX = 10;
       LattY = height - 40;
       LongX = 10;
       LongY = height - 20;
       
   }
   
   //Lines going across
   line(0,  UpperKoreaY, width, UpperKoreaY); //Upper Korea
   line(0,  LowerKoreaY, width, LowerKoreaY); //Lower Korea
     
   //Lines going downwards
   line(RightKoreaX,  0, RightKoreaX, height); //Right Korea
   line(LeftKoreaX,  0, LeftKoreaX, height); //Left Korea
   
   fill(255,0,0);
   noStroke();
   textSize(18);
   rect(TargetX, TargetY + 2, 156, 2);
   text("Target Located", TargetX, TargetY);
   
   fill(255,0,0, 200);
   textSize(15);
   text("Lattitude :  40.3399°  N", LattX, LattY);
   text("Longitude :  127.5101°  E", LongX, LongY);
}

void LoadNorthKorea()
{
  tint(255, 127);
  image(NorthKorea, width/4 - 30, height/2 - 220);
}

void LoadKoreaLines()
{
   //Draw Background Lines
   stroke(19, 161, 229, 50);
   
   //Lines going across
   line(0,  height/2 + 10, width, height/2 + 10);
   line(0,  height/2 + 90, width, height/2 + 90);
     
   //Lines going downwards
   line(width/4 + 15,  0, width/4 + 15, height);
   line(width/4 + 115,  0, width/4 + 115, height);
   
   //Red small rects
   fill(255,0,0);
   noStroke();
   //Top
   rect(width/4 + 14,  height/2 + 10, 3, 3);
   rect(width/4 + 14,  height/2 + 90, 3, 3);
   //Bot
   rect(width/4 + 114, height/2 + 10, 3, 3);
   rect(width/4 + 114, height/2 + 90, 3, 3);
}

void PulseCircleKorea()
{
    noFill();
    smooth();
    stroke(19, 161, 229, opacity);
    
    if(PulseDiameter != 150)
    {
      ellipse(width/4 + 64, height/2 + 50, PulseDiameter, PulseDiameter);
      PulseDiameter++;
      opacity -= 3;
    }
    else
    {
      PulseDiameter = 0;
      opacity = 255;
    }
}