Ball ball;
Paddle paddle;
Brick[] bricks;

int brickCount = 6;

void setup() {
  size(600, 400);

  ball = new Ball(width/2, height/2);
  paddle = new Paddle(width/2, height - 30);

  bricks = new Brick[brickCount];
  for (int i = 0; i < brickCount; i++) {
    bricks[i] = new Brick(80 + i * 80, 60);
  }
}

void draw() {
  background(240);

  paddle.update();
  paddle.display();

  ball.update();
  ball.checkPaddle(paddle);
  ball.display();

  for (int i = 0; i < bricks.length; i++) {
    if (bricks[i].active) {
      bricks[i].display();
      ball.checkBrick(bricks[i]);
    }
  }
}
