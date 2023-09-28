///設定中文
///設定點線面
void setup()
{
    size(500,500);///設定視窗大小
    for(int i=0; i<N; i++)
    {
       x[i] = random(500);//新增隨機變數
       y[i] = random(500);
       dx[i] = random(-2, +2);
       dy[i] = random(-2, +2);
       
    }
    ///dx = random(-10, +10);///新增亂數往哪跑
    ///dy = random(-10, +10);
}
int N=40;//使點數固定
float [] x = new float[N];//新增陣列
float [] y = new float[N];
float [] dx = new float[N];
float [] dy = new float[N];

//float x=250, y=250;
//float dx=1, dy=1;///新增變數
void draw()
{
   background(0);
   for(int i=0; i<N; i++)//新增迴圈
   {
     ellipse(x[i],y[i],5,5); ///劃一個點
     for(int k=0; k<N; k++)///畫線
     {
       float d = dist(x[i],y[i], x[k], y[k]);
       stroke(2.55*(100-d)); //讓線變為漸層
       if(d<100)
       {
          line(x[i],y[i], x[k], y[k]);
          dx[i] += ((x[k]-x[i])*0.0001);//新增吸引力
          dy[i] += ((y[k]-y[i])*0.0001);
       }
     }
     x[i] += dx[i];///加上使其移動
     y[i] += dy[i];
     if(x[i]<0 || x[i]>500) dx[i]= -dx[i];
     if(y[i]<0 || y[i]>500) dy[i]= -dy[i];
   }
}
