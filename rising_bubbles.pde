int nBubbles = 100;
Bubble[] aBub;
void setup() {
  size(500, 700);
  aBub = new Bubble[nBubbles];
  for (int i = 0; i < nBubbles; i++) {
    Bubble myBubble = new Bubble();
    aBub[i] = myBubble;
  }
}

void draw() {
  background(255);
  for (int i = 0; i < nBubbles; i++) {
    aBub[i].rise_wiggle();
    aBub[i].show();
  }
  System.out.println(millis());
}
