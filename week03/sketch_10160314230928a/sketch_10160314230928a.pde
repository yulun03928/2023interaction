///設定中文
///設定點線面
void setup()
{
    size(500,500);///設定視窗大小
}
float x=250, y=250;
float dx=1, dy=1;///新增變數
void draw()
{
   ellipse(x,y,5,5); ///劃一個點
   x += dx;///加上使其移動
   y += dy;
}
