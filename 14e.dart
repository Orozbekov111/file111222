
import 'dart:io';
import 'dart:math';
////вава
class User {
  String login;
  String password;
  String confirmPassword;
  User(this.login, this.password, this.confirmPassword);

  checkUser(String login, String password, String confirmPassword) {
    if(!checkLogin(login)) {
      return 'Не правильный логин. Логин должен содержать @ или @mail.ru или @gmail.com';
    }else if(!checkPassword(password)){
      return 'пароль должен содержать обязательный символ "_"';
    }else if(password != confirmPassword){
      return 'Ваши пароли не совподают';
    }else{
      return 'Пользователь успешно создан';
    }
  }

  static bool checkLogin(String login) {
    if(login.length >= 20) {
      return false;
    } else if(!login.contains('@') || (!login.endsWith('@mail.ru') && !login.endsWith('@gmail.com'))) {
      return false;
    }
    return true;
  }

  static bool checkPassword(String password) {
    if(password.length >= 20) {
      return false;
    }else if(!password.contains('_')) {
      return false;
    }else if(password.contains('@') && password.contains('%') && password.contains('?')) {
      return false;
    }
    return true;
  }
  
}




/// Игра угадай число


guessTheNumber() {
  print('Это игра yгадайте число.');
  print('Выберите уровень сложности:');
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

void main() {
  String? login;

  while (login == null || login.isEmpty) {
    print('Введите ваш логин:');
    login = stdin.readLineSync();
    if (login == null) {
      print('Попробуйте снова');
    } else if (login.isEmpty) {
      print('Логин не может быть пустым. Попробуйте снова');
    }
  }



  String? password;

  while (password == null || password.isEmpty) {
    print('Придумайте пароль:');
    password = stdin.readLineSync();
    if (password == null) {
      print('Попробуйте снова');
    } else if (password.isEmpty) {
      print('Пароль не может быть пустым. Попробуйте снова');
    }
  }


String? confirmPassword;
while (confirmPassword == null || confirmPassword.isEmpty) {
    print('Повторите пароль:');
    confirmPassword = stdin.readLineSync();
    if (confirmPassword == null) {
      print('Попробуйте снова');
    } else if (confirmPassword.isEmpty) {
      print('Пароль не может быть пустым. Попробуйте снова');
    }
  }

  var loginFinish = User(login, password, confirmPassword);
  loginFinish.checkUser(login, password, confirmPassword);
  print('Ваш логин: $login Ваш пароль: $password');

//////////////////////////////////////////////////////////////////////////////////////////////

  print('\n');
  print('Добро пожаловать $login в игру "УГАДАЙ ЧИСЛО"');
  print('Введите "1" - Если хотите найти число. \nВведите "2" - Если хотите чтобы нашли число.');
  String mm = '1';
  String nn = '2';
  String? user;
  while (user == null || user.isEmpty) {
    user = stdin.readLineSync();
    if (user == null) {
      print('Попробуйте снова');
    }
    else if (user.isEmpty) {
      print('Введите "1" - Если хотите найти число. \nВведите "2" - Если хотите чтобы нашли число.');
    }
  }

  if (user == mm) {
    guessTheNumber();
  } else if (user == nn) {
    randomSearch();
  }
}




