// import 'dart:math';

import 'dart:io';
import 'dart:math';

void main() {
  randomSearch();
}

void randomSearch() {
  Random random = Random();
  int number = random.nextInt(101); // Генерируем случайное число от 0 до 100
  int guess;
  int attempts = 0;

  do {
    guess = random.nextInt(101); // Генерируем предполагаемое число
    print("Предполагаемое число: $guess");
    attempts++;
  } while (guess != number);

  print("Угадано! Загаданное число: $number");
  print("Количество попыток: $attempts");
}

void randomShislo() {
  int targetNumber = int.parse(stdin.readLineSync()!);
  int low = 0;
  int high = 100;
  int guess;

  do {
    guess = Random().nextInt(high - low + 1) + low;
    print('Предполагаю, что ваше число: $guess');
    if (guess < targetNumber) {
      print('Мое число меньше');
      low = guess + 1;
    } else if (guess > targetNumber) {
      print('Мое число больше');
      high = guess - 1;
    }
  } while (guess != targetNumber);

  print('Угадал!');
}