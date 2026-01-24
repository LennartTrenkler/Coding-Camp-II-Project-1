class Brick {
  float x;
  float y;
  float w = 60;
  float h = 20;
  boolean active = true;

  Brick(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
