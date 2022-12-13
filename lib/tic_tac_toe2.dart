import 'package:test/test.dart';

enum Mark { none, x, o }

enum TicTacToeState { xTurn, oTurn, xWon, oWon, tie }

class TicTacToeGame {
  TicTacToeState state = TicTacToeState.xTurn;
  final List<Mark> board = List<Mark>.filled(9, Mark.none);

  String get stateString => state.toString().split('.').last;

  String get boardString {
    String b = "";
    for (final mark in board) {
      b += (mark == Mark.x) ? "X" : ((mark == Mark.o) ? "O" : "-");
    }
    return b;
  }

  @override
  String toString() {
    return "$stateString $boardString";
  }

  void pressedSquare(int index) {
    if (board[index] != Mark.none) {
      print("this spot isn't empty");
    }
    if (state == TicTacToeState.xTurn) {
      board[index] = Mark.x;
      state = TicTacToeState.oTurn;
      checkForGameOver();
    } else if (state == TicTacToeState.oTurn) {
      board[index] = Mark.o;
      state = TicTacToeState.xTurn;
      checkForGameOver();
    } else {
      print("This game is over");
    }
  }

  void checkForGameOver() {}
}

void main() {
  // print("Testing Tic tac toe game");
  // developmentWithPrintStatements();
  developmentWithTesting();
}

void developmentWithPrintStatements() {
  var game = TicTacToeGame();
  print("XTurn --------- $game");
  game.pressedSquare(4);
  print("OTurn ----X---- $game");
  game.pressedSquare(0);
  print("XTurn O---X---- $game");
}

void developmentWithTesting() {
  var game = TicTacToeGame();
  test('Initial Game board', () {
    expect(game.state, equals(TicTacToeState.xTurn));
    expect(game.board.length, equals(9));
  });
}
