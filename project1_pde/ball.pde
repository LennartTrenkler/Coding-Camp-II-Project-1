class Ball {
  float x;
  float y;
  float dx = 3;
  float dy = 3;
  float r = 8;

  Ball(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void update() {
    x += dx;
    y += dy;

    if (x < r || x > width - r) {
      dx *= -1;
    }

    if (y < r) {
      dy *= -1;
    }

    if (y > height) {
      y = height / 2;
    }
  }

  void display() {
    pushMatrix();
    translate(x, y);
    ellipse(0, 0, r * 2, r * 2);
    popMatrix();
  }

  void checkPaddle(Paddle p) {
    if (y + r > p.y - p.h/2 &&
        x > p.x - p.w/2 &&
        x < p.x + p.w/2) {
      dy *= -1;
    }
  }

  void checkBrick(Brick b) {
    if (b.active &&
        x > b.x - b.w/2 &&
        x < b.x + b.w/2 &&
        y - r < b.y + b.h/2 &&
        y + r > b.y - b.h/2) {

      dy *= -1;
      b.active = false;
    }
  }
}
