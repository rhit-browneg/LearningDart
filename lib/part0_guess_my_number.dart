import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to Guess My Number!");
  var rand = Random();
  int num = rand.nextInt(100);
  int numGuess = 0;
  while (true) {
    print("Guess a number:");
    String guess = stdin.readLineSync().toString();
    int guessNum = int.parse(guess);
    numGuess = numGuess + 1;
    if (guessNum < num) {
      print("Too low!");
    } else if (guessNum > num) {
      print("Too high!");
    } else {
      print("Correct! It took you $numGuess tries!");
      return;
    }
  }
}
