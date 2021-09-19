class Die {
  color diceColor;
  color eyeColor;
  int dieValue;
  Die(color diceColor_, color eyeColor_) {
    diceColor = diceColor_;
    eyeColor = eyeColor_;
  }
  int roll() {
    dieValue = int(random(1, 7));
    diceColor = color(random(255), random(255), random(255));
    eyeColor = color(random(255), random(255), random(255));
    return dieValue;
  }
  
  void diceDisplay(int x, int y, int size) {
    boolean[] eyes = {false, false, false, false, false, false, false};
    switch(dieValue) {
    case 1: 
      eyes[3] = true; 
      break;
    case 2: 
      eyes[2] = true;
      eyes[4] = true;
      break;
    case 3: 
      eyes[2] = true;
      eyes[3] = true;
      eyes[4] = true;
      break;
    case 4: 
      eyes[0] = true;
      eyes[2] = true;
      eyes[4] = true;
      eyes[6] = true;
      break;
    case 5:
      eyes[0] = true;
      eyes[2] = true;
      eyes[3] = true;
      eyes[4] = true;
      eyes[6] = true;
      break;
    case 6:
      eyes[0] = true;
      eyes[1] = true;
      eyes[2] = true;
      eyes[4] = true;
      eyes[5] = true;
      eyes[6] = true;
      break;
    }

    noStroke();
    // The actual dice
    fill(diceColor);
    rect(x, y, size, size);

    // First eye on the top
    fill(eyeColor, (eyes[0] ? 255 : 0));
    ellipse(x-size/3, y-size/3, size/6, size/6);
    // Second eye on the top
    fill(eyeColor, (eyes[1] ? 255 : 0));
    ellipse(x, y-size/3, size/6, size/6);
    // Third eye on the top
    fill(eyeColor, (eyes[2] ? 255 : 0));
    ellipse(x+size/3, y-size/3, size/6, size/6);
    //Middle eye
    fill(eyeColor, (eyes[3] ? 255 : 0));
    ellipse(x, y, size/6, size/6);
    // First eye on the bottom
    fill(eyeColor, (eyes[4] ? 255 : 0));
    ellipse(x-size/3, y+size/3, size/6, size/6);
    // First eye on the bottom
    fill(eyeColor, (eyes[5] ? 255 : 0));
    ellipse(x, y+size/3, size/6, size/6);
    // First eye on the bottom
    fill(eyeColor, (eyes[6] ? 255 : 0));
    ellipse(x+size/3, y+size/3, size/6, size/6);
  }
}
