Ball ball;
Paddle paddle;
Brick[] bricks;

int brickCount = 6;

int startTime;
int gameDuration = 60000; 
boolean gameOver = false;

void setup() {
  size(600, 400);

  ball = new Ball(width/2, height/2);
  paddle = new Paddle(width/2, height - 30);

  bricks = new Brick[brickCount];
  for (int i = 0; i < brickCount; i++) {
    bricks[i] = new Brick(80 + i * 80, 60);
  }
startTime = millis();
}

void draw() {
  background(240);

if (!gameOver && millis() - startTime >= gameDuration) {
    gameOver = true;
  }

  if (!gameOver) {

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
 int destroyedBricks = 0;
    for (int i = 0; i < bricks.length; i++) {
      if (!bricks[i].active) {
        destroyedBricks++;
      }
    }
 if (destroyedBricks == bricks.length) {
      resetBricks();
    }
 } else {

textAlign(CENTER);
    textSize(32);
    fill(0);
    text("Time's Up!", width/2, height/2);

}
}
void resetBricks() {
  for (int i = 0; i < bricks.length; i++) {
    bricks[i].active = true;
  }
}


