class Bubble { //<>//
  int bSize;
  int[] bColor;
  int x;
  int y;
  int a;
  int b;
  Bubble() {
    bSize = (int) (Math.random() * 80) + 20;
    x = (int) (Math.random() * width);
    y = (int) (Math.random()*height);
    int a = 0;
    int b = 255;
    bColor = new int[3];
    for (int i =0; i < bColor.length; i++)
    {
      bColor[i] = (int)(Math.random()*150);
    }
  }
  void rise_wiggle() {
    float rFactor = 0.05;
    float r = ((int) (Math.random() * 10) + bSize) * rFactor;
    //float r = bSize * rFactor;
    int w = (int) (Math.random() * 9) - 4;
    x += w;
    y -= r;
  }

  void show() {
    fill(bColor[0], bColor[1], bColor[2]);
    ellipse(x, y, bSize, bSize);
  }
}
