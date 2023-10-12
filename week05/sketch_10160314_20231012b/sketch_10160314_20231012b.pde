void setup()
{
  size(600, 600, P3D); //processing 的 3D功能
}
void draw()
{
  background(#FFFFF2);//設定背景顏色
  pushMatrix();//備份矩陣
  translate(mouseX, mouseY);//移動
  rotateY(radians(mouseX));//對Y軸進行轉動
  fill(0, 255, 0);//面填色為綠色
  box(100);//3D的盒子、方塊
  
  noFill();//面不填充顏色
  scale(2);//放大兩倍
  box(100);//雖然是100的盒子但是放大兩倍
  popMatrix();//還原矩陣
}
