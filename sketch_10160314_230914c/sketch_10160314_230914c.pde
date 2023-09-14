void setup()
{
   size(500,500);
   background(255);//改為白色背景;
}

void draw()//畫圖每秒60次
{
  if(mousePressed){//如果按下滑鼠
     line(mouseX,mouseY,pmouseX,pmouseY); 
  }//畫線(滑鼠座標mouseX,mouseY, 到之前滑鼠座標pmouseX,pmouseY);
}
