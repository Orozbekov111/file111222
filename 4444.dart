import 'dart:io';
import 'dart:math';

void main() {

  // Задача 1
  print('Задача 1');

  // +
  int a = 5;
  double b = 5.127;
  var c = a + b;
  print("${a} + ${b} = $c");
  
  // -
  int a1 = 5;
  double b1 = 5.126;
  var c1 = a - b;
  print("${a1} - ${b1} = $c1");
  
  // *
  int a2 = 5;
  double b2 = 5.126;
  var c2 = a * b;
  print("${a2} * ${b2} = $c2");
  
  // /
  int a3 = 5;
  double b3 = 5.126;
  var c3 = a / b;
  print("${a3} / ${b3} = $c3");

  // Задача 2

  print('Задача 2');

  num a4 = 5;
  num a5 = 2;
  print(a4+a5);

  num a6 = 5;
  num a7 = 2;
  print(a6-a7);

  num a8 = 132;
  num a9 = 132;
  print(a8*a9);

  num a10 = 78;
  num a11 = 2;
  print(a10/a11);

  num a12 = 78;
  num a13 = 2.5;
  print(a12/a13);

  num a14 = 0;
  num a15 = 5;
  print(a14*a15);

  // Задача 3
  print('Задача 3');
  var a16 = 1;
  var a17 = 2;

  a16 = a16 + a17;
  a17 = a16 - a17;
  a16 = a16 - a17;
  print('a16= $a16 a17 = $a17');

  // Задача 4
  print('Задача 4');
  // print("Введите ваше имя:");
  // String? name = stdin.readLineSync();
  // print("$name укажите ваш возраст:");
  // String? age = stdin.readLineSync();

  // print(
  //   "Ваше имя: $name Ваш возраст: $age"
  // );

  // Задача 5
  print('Задача 5');
  String numder = '123';
  if (numder.length == '123') {
    print('верно');
  }else {
    print('Не верно');
  }

  // Задача 6

  print('Задача 6');
  bool www = true;
  if (www = true) {
    print('бери зонт');
  }else {
    print('Не бери зонт');
  }
  // Задача 7
  print('Задача 7');
  double random = 5;
  double three = 3;
  double ten = 10;
  var df = random += ten;
  var as = random - ten;
  if(three <= random) {
    print(df);
  } else {
    print(as);
  };
  // Задача 8
  print('Задача 8');
  int ab1 = 100;
  if(ab1 < 7) {
    print('yes');
  } else if(ab1 > 10) {
    print('no');
  } else if(ab1 == 9) {
    print('error');
  } else {
    print('------------');
  }


  // Задача 9
  print('Задача 9');
  int more = 11;
  int more1 = 22;
  print("${max(more, more1)}");

  // Задача 10
  print('Задача 10');
  int  v1111 = 80;
  int  v2222 = 50;
  var  v3333 = v1111 + v2222;
  if(v3333 == 100) {
    print('yes');
  } else {
    print('no');
  }

  // Задача 11
  print('Задача 11');
  int time_year = 5;
  if(time_year == 12 || time_year == 1 || time_year == 2) {
    print('Зима');
  } else if(time_year == 3 || time_year == 4 || time_year == 5) {
    print('Весна');
  } else if(time_year == 6 || time_year == 7 || time_year == 8) {
    print('Лето');
  } else if(time_year == 11 || time_year == 10 || time_year == 9) {
    print('Зима');
  } else {
    print('Не верно');
  }

  // Задача 12
  print('Задача 12');

  int one = 12;
  int two = 20;
  // int three = 30;

  print(min(one, two));
  

  // // Задача 13
  print('Задача 13');

  List<int> perestanovka = [100, 200, 300];
  print('Задача 13: ${perestanovka.reversed}');

  // Задача 14
  print('Задача 14');
  List list = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var index = 0; index < list.length; index++){
    if (list[index] < 5){
    print(list[index]);}
  }

  // Задача 15
  print('Задача 15');
  print('*');
  print('**');
  print('***');
  print('****');
  print('*****');

}
// print('object');



// print("dfdfdfdfdf");
// String? name = stdin.readLineSync();
// print("asaaasas: $name");




// {
//     // Используйте IntelliSense, чтобы узнать о возможных атрибутах.
//     // Наведите указатель мыши, чтобы просмотреть описания существующих атрибутов.
//     // Для получения дополнительной информации посетите: https://go.microsoft.com/fwlink/?linkid=830387
//     "version": "0.2.0",
//     "configurations": [
//         {
//             "name": "Dart & Flutter",
//             "request": "launch",
//             "type": "dart",
//             "program": "main.dart",
//             "console": "terminal"

//         }
//     ]
// }