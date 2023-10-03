
import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('\n');
  print('Добро пожаловать в игру "УГАДАЙ ЧИСЛО"');
  print('"Найти" - Если хотите найти число. \n"Найди" Если хотите чтобы нашли число');
  String mm = 'Найти';
  String nn = 'Найди';
  String user = stdin.readLineSync() ?? 'Найти';

  if (user == mm) {
    guessTheNumber();
  } else if (user == nn) {
    randomSearch();
  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////

guessTheNumber() {
  print('Это игра yгадайте число.');
  print('Выберите уровень сложности:');
  print('1 - Даже не пытайся бейба \n3 - Супер тяжелый уровень \n5 - Тяжелый уровень \n7 - Средний уровень \n10 - Легкий уровень');
  print('Введите: "greater", если число больше догадки, \nВведите: "less", если число меньше догадки.');
  int counter2 = 0;
  int chisloPc = Random().nextInt(100) + 1; // Генерация случайного числа от 1 до 100

  bool isAnswer2 = false;
  int attempt = 1;

  while (!isAnswer2) {
    counter2++;

    print('Попытка: № $attempt. Введите вашу догадку:');
    int? chelovek = int.parse(stdin.readLineSync() ?? '66');

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

    attempt++;
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////

randomSearch() {
  int counter = 0;
  int max = 100;
  int min = 0;
  print('Это игра yгадаю число.');
  print('Выберите уровень сложности:');
  print('1 - Даже не пытайся бейба \n3 - Супер тяжелый уровень \n5 - Тяжелый уровень \n7 - Средний уровень \n10 - Легкий уровень');
  int uroven = int.parse(stdin.readLineSync() !);
  print('Вы должны загадать число а комп найдет это число');
  print('Введите: "greater", если число больше догадки, \nВведите: "less", если число меньше догадки.');
  print('Загадайте число:');
  int answer = int.parse(stdin.readLineSync() ?? '');

  bool isAnswer = false;
    int attempt2 = 1;

    
    if (uroven == 5) {
      print('Ваше число $answer было угадано за $counter попыток');
      isAnswer = true;
    }else if(uroven < 6) {
      print('Вы превысили количество попыток. Игра окончена!');
      isAnswer = true;
    }
    if (uroven == 7) {
      print('Ваше число $answer было угадано за $counter попыток');
      isAnswer = true;
    }else if(uroven < 8) {
      print('Вы превысили количество попыток. Игра окончена!');
      isAnswer = true;
    }
    if (counter == 10) {
      print('Ваше число $answer было угадано за $counter попыток');
      isAnswer = true;
    }else if(uroven < 11) {
      print('Вы превысили количество попыток. Игра окончена!');
      isAnswer = true;
    }
  while (!isAnswer) {
    counter++;
    var random = Random().nextInt((max - min) + 1) + min;
      print('Попытка: № $attempt2. Введите вашу догадку:');
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
    }

    uroven++;
    attempt2++;
  }

}


////////////////////////////////////////////////////////////////////////////////////////////////

