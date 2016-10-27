void setup()
{
  size(600,600);
  background(1,12,18);
}

//Variables for BackgroundCircles
float xCircle = 0;
float yCircle = 0;

void draw()
{
  BackgroundCircles();
}

void BackgroundCircles()
{
   //Draw Background Circles
   yCircle += height/11;
   if(yCircle > height)
   {
     yCircle = 0;
     xCircle += 40;
   }
   
   noStroke();
   fill(49,163,219,20);
   ellipse(xCircle , yCircle, 5, 5);
}