void setup()
{
   size(600, 600, P3D); //processing 的 3D功能
}
void draw()
{
  background(#FFFFF2);//設定背景顏色
  pushMatrix();//備份矩陣
    translate(mouseX, mouseY);//移動
    box(100);//3D的盒子、方塊
  popMatrix();//還原矩陣
}
