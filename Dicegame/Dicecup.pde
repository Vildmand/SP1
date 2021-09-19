class DiceCup {
  int diceSides = 6;
  int amountDices = 0;
  int[] counterDices = new int[diceSides];
  Die[] cup = new Die[dices];
  Die[][] sortedDice = new Die[diceSides][dices];

  void addDie(Die die) {
    if (amountDices < cup.length) {
      cup[amountDices] = die;
      amountDices++;
    }
  }

  void shake() {
    sortedDice = new Die[diceSides][dices];
    counterDices = new int[diceSides];
    for (int i = 0; i < cup.length-(cup.length-amountDices); i++) {
      cup[i].roll();
    }
    for (int i = 0; i < cup.length-(cup.length-amountDices); i++) {
      switch(cup[i].dieValue) {
      case 1: 
        sortedDice[0][counterDices[0]] = cup[i];
        counterDices[0]++;
        break;
      case 2: 
        sortedDice[1][counterDices[1]] = cup[i];
        counterDices[1]++;
        break;
      case 3: 
        sortedDice[2][counterDices[2]] = cup[i];
        counterDices[2]++;
        break;
      case 4: 
        sortedDice[3][counterDices[3]] = cup[i];
        counterDices[3]++;
        break;
      case 5: 
        sortedDice[4][counterDices[4]] = cup[i];
        counterDices[4]++;
        break;
      case 6: 
        sortedDice[5][counterDices[5]] = cup[i];
        counterDices[5]++;
        break;
      }
    }
  }

  void drawMultipleDices(int x, int y, int dieSize) {
    int placementY = y;
    for (int i = 0; i < diceSides; i++) {
      if (sortedDice[i][0] != null) {
        for (int f = 0; f < sortedDice[i].length-(sortedDice[i].length-counterDices[i]); f++) {
          sortedDice[i][f].diceDisplay(int(x+f*dieSize*1.5), placementY, dieSize);
        }
        placementY += dieSize*1.5;
      }
    }
  }
}
