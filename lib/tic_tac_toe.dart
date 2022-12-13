enum Mark { none, x, o }

enum GameState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  var gameState = GameState.xTurn;
  var arr = [
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none,
    Mark.none
  ];

  pressedSqaure(int index) {
    if (arr[index] != Mark.none) {
      print("This sqaure alredy has a mark");
      return;
    }
    if (gameState == GameState.xTurn) {
      arr[index] = Mark.x;
      gameState = GameState.oTurn;
      checkIfWon(Mark.x);
    } else if (gameState == GameState.oTurn) {
      arr[index] = Mark.o;
      gameState = GameState.xTurn;
      checkIfWon(Mark.o);
    }
    //check for a tie
    if (gameState != GameState.oWon && gameState != GameState.xWon) {
      for (int x = 0; x < arr.length; x++) {
        if (arr[x] == Mark.none) {
          return;
        }
      }
      print("Tie!");
      gameState = GameState.tie;
    }
  }

  checkIfWon(Mark mark) {
    if (mark == Mark.x) {
      if (arr[0] == Mark.x && arr[1] == Mark.x && arr[2] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[3] == Mark.x && arr[4] == Mark.x && arr[5] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[6] == Mark.x && arr[7] == Mark.x && arr[8] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[0] == Mark.x && arr[3] == Mark.x && arr[6] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[1] == Mark.x && arr[4] == Mark.x && arr[7] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[2] == Mark.x && arr[5] == Mark.x && arr[8] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[0] == Mark.x && arr[4] == Mark.x && arr[8] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      } else if (arr[2] == Mark.x && arr[4] == Mark.x && arr[6] == Mark.x) {
        print("X won!");
        gameState = GameState.xWon;
      }
    } else if (mark == Mark.o) {
      if (arr[0] == Mark.o && arr[1] == Mark.o && arr[2] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[3] == Mark.o && arr[4] == Mark.o && arr[5] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[6] == Mark.o && arr[7] == Mark.o && arr[8] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[0] == Mark.o && arr[3] == Mark.o && arr[6] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[1] == Mark.o && arr[4] == Mark.o && arr[7] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[2] == Mark.o && arr[5] == Mark.o && arr[8] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[0] == Mark.o && arr[4] == Mark.o && arr[8] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      } else if (arr[2] == Mark.o && arr[4] == Mark.o && arr[6] == Mark.o) {
        print("O won!");
        gameState = GameState.oWon;
      }
    }
  }
}

void main(List<String> args) {
  TicTacToeGame game = new TicTacToeGame();
  // game.pressedSqaure(0);
  // game.pressedSqaure(2);
  // game.pressedSqaure(3);
  // game.pressedSqaure(7);
  // game.pressedSqaure(6);
  // game.pressedSqaure(5);
  // print(game.gameState);

  game.pressedSqaure(0);
  game.pressedSqaure(2);
  game.pressedSqaure(1);
  game.pressedSqaure(3);
  game.pressedSqaure(4);
  game.pressedSqaure(7);
  game.pressedSqaure(5);
  game.pressedSqaure(8);
  game.pressedSqaure(6);
}
