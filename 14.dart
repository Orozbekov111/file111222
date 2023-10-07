// AUTH1.
// Создать класс User у которого есть
// поля login и password

// Создать функцию
// ÷который принимает на вход три параметра: login, password и confirmPassword.
// Login обязательно должен содержать @ или @mail.ru или @gmail.com
// Длина login должна быть меньше 20 символов. Если login не соответствует этим требованиям,
// необходимо вывести WrongLogin. Password может содержать любые символы за исключением следующих символов 
// ? @ $ %.(так же пароль должен содержать обязательный символ _). Длина password должна быть
// меньше 20 символов. Также password и confirmPassword должны быть равны. Если
// password не соответствует этим требованиям, необходимо вывести WrongPassword. 



class User {
  String login;
  String password;

  User(this.login, this.password);
  
  static bool register(String login, String password, String confirmPassword) {
    if (password == confirmPassword) {
      // Создаем нового пользователя
      User newUser = User(login, password);
      print('Пользователь ${newUser.login} успешно зарегистрирован.');
      return true;
    } else {
      print('Пароли не совпадают. Регистрация не удалась.');
      return false;
    }
  }
}

void main() {
  print('aaa');
  String userLogin = stdin.readLineSync() ?? "";
    print('sss');
  String userPassword = stdin.readLineSync() ?? "";
  String userConfirmPassword = stdin.readLineSync() ?? "";

  bool registrationSuccess = User.register(userLogin, userPassword, userConfirmPassword);

  if (registrationSuccess) {
    // Дополнительные действия после успешной регистрации
  }
}