// 2) Напишите программу с классом Math. Создайте два атрибута — a и b.
// Напишите методы addition — сложение, multiplication —
// умножение, division — деление, subtraction — вычитание. При передаче в
// методы параметров a и b с ними нужно производить соответствующие
// действия и печатать ответ.

class Math {

  double a;
  double b;

  Math(this.a, this.b);
  
  void additio(){
    double summ = a + b;
    print('$a + $b = $summ');
  }
  void multiplication(){
    double summ = a * b;
    print('$a * $b = $summ');
  }
  void subtraction(){
    double summ = a - b;
    print('$a - $b = $summ');
  }
  void division(){
    double summ = a / b;
    print('$a / $b = $summ');
  }
}



// 3) Напишите программу с классом Car. Создайте конструктор класса Car.
// Создайте атрибуты класса Car — color (цвет), type (тип), year (год). Напишите
// пять методов. Первый — запуск автомобиля, при его вызове выводится
// сообщение «Автомобиль заведен». Второй — отключение автомобиля —
// выводит сообщение «Автомобиль заглушен». Третий — присвоение
// автомобилю года выпуска. Четвертый метод — присвоение автомобилю типа.
// Пятый — присвоение автомобилю цвета

class Car {
  String color;
  String type;
  int year;

  Car(this.color, this.type, this.year);

  void start() {
    print('Ваш $color $type $year года заведен');
  }

  void stop() {
    print('Ваш $color $type $year года заглушен');
  }


}





// 4) Николаю требуется проверить, возможно ли из представленных отрезков
// условной длины сформировать треугольник.
// Для этого он решил создать класс TriangleChecker, принимающий только
// положительные числа.
// С помощью метода is_triangle() возвращаются следующие значения (в
// зависимости от ситуации):
// – Ура, можно построить треугольник!;
// – С отрицательными числами ничего не выйдет!;
// – Нужно вводить только числа!;
// – Жаль, но из этого треугольник не сделать.


class TriangleChecker {
  double a;
  double b;
  double c;

  TriangleChecker(this.a, this.b, this.c);

  String isTriangle() {
    if (a <= 0 || b <= 0 || c <= 0) {
      return 'С отрицательными числами ничего не выйдет!';
    }

    if (!(a is double) || !(b is double) || !(c is double)) {
      return 'Нужно вводить только числа!';
    }

    if (a + b > c && a + c > b && b + c > a) {
      return 'Ура, можно построить треугольник!';
    } else {
      return 'Жаль, но из этого треугольник не сделать.';
    }
  }
}


// 5) Реализуйте класс MyString, который будет иметь следующие методы:
// метод reverse(), который параметром принимает строку, а возвращает ее в
// перевернутом виде, метод ucFirst(), который параметром принимает строку, а
// возвращает эту же строку, сделав ее первую букву заглавной.

class MyString {
  String reverse(String input) {
    List<String> characters = input.split('');
    characters = characters.reversed.toList();
    return characters.join('');
  }

  String ucFirst(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }
}






void main() {
////////////////////////// (2) /////////////////////////////////
  print('задача 2');
  var math = Math(10.0, 5.0);

  math.additio();
  math.multiplication();
  math.subtraction();
  math.division();

/////////////////////////// (3) ////////////////////////////
  print('задача 3');
  var myCar = Car('синвий', 'мерс', 2022);
 
  myCar.start();
  myCar.stop();
/////////////////////////// (4) ///////////////////////////
  print('задача 4');
  var checker = TriangleChecker(3, 4, 5);
  print(checker.isTriangle());

//////////////////////////// (5) ////////////////////////////////
  print('задача 5');
  MyString myString = MyString();

  String original = 'программирование';
  
  String reversed = myString.reverse(original);
  print(reversed); 
  
  String capitalized = myString.ucFirst(original);
  print(capitalized); 


