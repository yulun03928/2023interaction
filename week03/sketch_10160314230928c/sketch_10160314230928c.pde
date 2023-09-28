///設定中文
///設定點線面
void setup()
{
    size(500,500);///設定視窗大小
    for(int i=0; i<20; i++)
    {
       x[i] = random(500);//新增隨機變數
       y[i] = random(500);
       dx[i] = random(-1, +1);
       dy[i] = random(-1, +1);
       
    }
    ///dx = random(-10, +10);///新增亂數往哪跑
    ///dy = random(-10, +10);
}
float [] x = new float[20];//新增陣列
float [] y = new float[20];
float [] dx = new float[20];
float [] dy = new float[20];

//float x=250, y=250;
//float dx=1, dy=1;///新增變數
void draw()
{
   background(0);
   for(int i=0; i<20; i++)//新增迴圈
   {
     ellipse(x[i],y[i],5,5); ///劃一個點
     x[i] += dx[i];///加上使其移動
     y[i] += dy[i];
     if(x[i]<0 || x[i]>500) dx[i]= -dx[i];
     if(y[i]<0 || y[i]>500) dy[i]= -dy[i];
   }
}
