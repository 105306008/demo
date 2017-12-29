class Background {
  PImage bg;
  int bgRandom;
  float x, y, speed;
  final float LIMIT_X = -800;
  final float RESET_X = 1600;

  Background(float x, float y) {
    bgRandom = floor(random(0, 4));
    bg =loadImage("img/bg" + str(bgRandom) + ".png");
    this.x = x;
    this.y = y;
  }

  void move(float speed) {
    this.speed = speed;
    x -= speed;
    if (x <= LIMIT_X) {
      x = RESET_X;
    }
  }

  void display() {
    image(bg, x, y);
  }
}