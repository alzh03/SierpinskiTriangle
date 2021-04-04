public void setup()
{
  size(500, 500);
}
public void draw()
{
  for(int i = 100; i <= 500; i += 100){
    for(int j = 100; j <= 500; j += 100){
      sierpinski(j, i, 100);
    }
  }
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 40){
    triangle(x, y, x-len/2, y-len, x-len, y);
  } else{
    sierpinski(x, y, len/2);
    sierpinski(x-len/2, y, len/2);
    sierpinski(x-len/4, y-len/2, len/2);
  }
}
