import 'dart:io';

void getGuess() {
  int answer = 5;
  print("Please input your guess and press ENTER...");
  int guess = int.parse(stdin.readLineSync()!);

  if(guess == 1 || guess == 2) {
    print("You are too far low!");
    getGuess();
  } else if(guess == 3 || guess == 4) {
    print("A bit higher, will ya?");
    getGuess();
  } if(guess == 6 || guess == 7) {
    print("A bit lower, will ya?");
    getGuess();
  } else if(guess == 8 || guess == 9 || guess == 10) {
    print("You are way too high!");
    getGuess();
  } if(guess == 5) {
    print("You got it!!! Well done...");
  } else if(guess <= 0 || guess > 10) {
    print("Oh no! You are out of range...");
    getGuess();
  }
}

void main() {
  getGuess();
}