PImage img;
void setup()
{
  size(500, 500);
  img = loadImage("1.jpg");
}

void draw()
{
  image(img, mouseX, mouseY, 300, 300);  
}
