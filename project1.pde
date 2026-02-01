Ball ball;
Paddle paddle;
Brick[] bricks;

// Colors
color bgColor     = color(18);
color paddleColor = color(200);
color ballColor   = color(230, 190, 80);   // gold
color brickColor  = color(220, 100, 100, 190);

// Game state
int score = 0;
int brickCount = 6;

// Timer
int startTime;
int gameDuration = 60000; // 60 seconds
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
  background(bgColor);

  if (!gameOver) {

    // Calculate remaining time
    int timeLeft = (gameDuration - (millis() - startTime)) / 1000;

    // Check timer
    if (millis() - startTime >= gameDuration) {
      gameOver = true;
    }

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

    // Score
    fill(200);
    textSize(16);
    text("Score: " + score, 15, 25);

    // Timer display
    text("Time: " + max(timeLeft, 0), width - 90, 25);

  } else {
    fill(200);
    textSize(24);
    textAlign(CENTER);
    text("Time's Up!", width/2, height/2);
  }
}


void resetBricks() {
  for (int i = 0; i < bricks.length; i++) {
    bricks[i].active = true;
  }
}
boolean allBricksDestroyed() {
  for (int i = 0; i < bricks.length; i++) {
    if (bricks[i].active) {
      return false;
    }
  }
  return true;
}
