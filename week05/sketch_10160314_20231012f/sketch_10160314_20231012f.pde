void setup()
{
   size(400, 400, P3D); 
}

void draw()
{
   background(255);
   if(mousePressed && mouseButton==LEFT) background(255,0,0);
   if(mousePressed && mouseButton==RIGHT) background(0,255,0);
   if(mousePressed && mouseButton==CENTER) background(0,0,255);
}

void mousePressed()
{
  if(mousePressed && mouseButton==LEFT) println("LEFT");
  if(mousePressed && mouseButton==CENTER) println("CENTER");
  if(mousePressed && mouseButton==RIGHT) println("RIGHT");
}  
