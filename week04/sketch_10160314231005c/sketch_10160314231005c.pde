void setup()
{
   size(400,400);
   
}
int [][] card = new int[8][11];
color [] C = {#FF5555, #FFAA00, #55AA55, #5555FF}; 
void draw()
{
   background(255);
   for(int i=0;i<8;i++)
   {
      for(int j=0; j<11;j++)
      { 
        fill(C[i%4]); 
        drawCard(j*32, i*50, C[i%4]); //製作小框框
      }
   }
}
void drawCard(int x, int y, color c)
{
    stroke(128);//gray stroke
    fill(255);
    rect(x, y, 32, 50, 7);
    noStroke();
    fill(c);//white
    rect(x+3, y+3, 32-5, 50-5, 4);

}
