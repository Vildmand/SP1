DiceCup cup;
int dices = 10;
int size = 75;
int startX = int(size*1.5);
int startY = int(size*1.5);

void setup() {
  fullScreen();
  rectMode(CENTER);
  cup = new DiceCup();
  for (int i = 0; i < dices; i++) {
    cup.addDie(new Die(255, 0));
  }
  cup.shake();
}

void draw() {
  background(255);
  cup.drawMultipleDices(startX, startY, size);
}

void keyPressed() {
  cup.shake();
}
