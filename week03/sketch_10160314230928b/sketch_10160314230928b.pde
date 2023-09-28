///設定中文
///設定點線面
void setup()
{
    size(500,500);///設定視窗大小
    dx = random(-10, +10);///新增亂數往哪跑
    dy = random(-10, +10);
}
float x=250, y=250;
float dx=1, dy=1;///新增變數
void draw()
{
   background(0);
   
   ellipse(x,y,5,5); ///劃一個點
   x += dx;///加上使其移動
   y += dy;
   if(x<0 || x>500) dx= -dx;
   if(y<0 || y>500) dy= -dy;
}
