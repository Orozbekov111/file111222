import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Если хотите найти число, введите "nn". \nЕсли хотите, чтобы нашли число, введите "mm".');
  String mm = 'mm';
  String nn = 'nn';
  String user = stdin.readLineSync() ?? '';

  if (user == mm) {
    guessTheNumber();
  } else if (user == nn) {
    randomSearch();
  }
}

randomSearch() {
  int counter = 0;
  int max = 100;
  int min = 0;

  print('Загадайте число:');
  int answer = int.parse(stdin.readLineSync() ?? '');

  bool isAnswer = false;

  while (!isAnswer) {
    var random = Random().nextInt((max - min) + 1) + min;

    if (answer == random) {
      counter++;
      print("Ваше число $answer было угадано за $counter попыток");
      isAnswer = true;
    } else {
      print('Ваше число $random');

      String lessOrGreater = stdin.readLineSync()!;

      if (lessOrGreater == "less") {
        max = random - 1;
      } else if (lessOrGreater == "greater") {
        min = random + 1;
      } else {
        print('Неверный ответ');
      }
      counter++;
    }
  }
}

guessTheNumber() {
  print('Угадайте число. Введите "greater", если число больше догадки, \n"less", если число меньше догадки, или "correct", если вы угадали число.');
  int counter2 = 0;
  int chisloPc = Random().nextInt(100) + 1; // Генерация случайного числа от 1 до 100

  bool isAnswer2 = false;
  int round = 1;

  while (!isAnswer2) {
    counter2++;

    print('Раунд $round. Введите вашу догадку:');
    int chelovek = int.parse(stdin.readLineSync() ?? '');

    if (chelovek < chisloPc) {
      print('Greater');
    } else if (chelovek > chisloPc) {
      print('Less');
    } else if (chelovek == chisloPc) {
      print('Ответ верный! Вы угадали число $chisloPc за $counter2 попыток');
      isAnswer2 = true;
    }

    if (counter2 == 10) {
      print('Вы превысили количество попыток. Игра окончена!');
      isAnswer2 = true;
    }

    round++;
  }
}