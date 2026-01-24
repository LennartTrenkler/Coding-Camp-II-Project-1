class Paddle {
  float x;
  float y;
  float w = 80;
  float h = 12;

  Paddle(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void update() {
    x = mouseX;
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
