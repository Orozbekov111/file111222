// import 'dart:math';

// void main() {
//   print('Задача 1');
//   int a = 0;
//   switch(a) {
//     case 10:
//       print('yes');
//       break;
//     default: 



//       print('no');
//       break;
//   }

//   print('Задача 2');
//   String lang = 'en';
//   if (lang == 'en') {
//     print('Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday');
//   }else if (lang == 'ru') {
//     print('понедельник, вторник, среда, четверг, пятница, суббота, воскресенье');
//   }else {
//     print('wrong text');
//   }
  

//   switch(lang) {
//     case 'en':
//       print('Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday');
//       break;
//     case 'ru':
//       print('понедельник, вторник, среда, четверг, пятница, суббота, воскресенье');
//       break;
//     default:
//     print('wrong text');
//   }

//   print('Задача 3');
//   var result = 1;
//   switch(result) {
//     case 1:
//     print('Зима');
//     break;
//     case 2:
//     print('Весна');
//     break;
//     case 3:
//     print('Лето');
//     break;
//     case 4:
//     print('Осень');
//     break;
//   }

//   print('Задача 4');
//   var plan = 4;
//   switch(plan) {
//     case 1:
//     print('Понедельник: Встань по раньше');
//     break;
//     case 2:
//     print('Вторник: Встань по раньше');
//     break;
//     case 3:
//     print('Среда: Встань по раньше');
//     break;
//     case 4:
//     print('Четверг: Встань по раньше');
//     break;
//     case 5:
//     print('Пятница: Встань по раньше');
//     break;
//     case 6:
//     print('Суббота: Встань по раньше');
//     break;
//     case 7:
//     print('Воскресениье: Встань по раньше');
//     break;
//     default:
//     print('Не правильная цифра');
//   }



//   print('Циклы while и for');
//   print('Задача 1');
  
//   int i1 = 0;
//   while (i1 < 100){
//     print(i1);
//     i1 = i1 + 1;
//   }

//   print('Задача 2');
//   for (var n = 11; n < 34; n++){
//     print(n);
//   }

//   int n1 = 11;
//   while (n1 < 34){
//     print(n1);
//     n1++;
//   }

//   print('Задача 3');
//   for (var d = 1; d < 100; d++){
//     d = d + 1;
//     print(d);
//   }

//   int d1 = 0;
//   while (d1 < 100){
//     print(d1);
//     d1 = d1 + 2;
//   }


//   print('Задача 4');
//   for (var x = 1; x < 100; x++){
//     x = x + x;
//     print(x);
//   }

//   int x1 = 1;
//   while (x1 < 100){
//     print(x1);
//     x1 = x1 + x1;
//   }

// }


  import 'dart:math';

void main2() {
  double a = 2;
  double b = 5;
  double c = -3;

  ku(a, b, c);
}

void ku(double a, double b, double c) {
  double discriminant = (b * b) - (4 * a * c);

    double cc = (-b + sqrt(discriminant)) / (2 * a);
    double cc2 = (-b - sqrt(discriminant)) / (2 * a);
    print("У уравнения есть два корня: $cc и $cc2");
 
}
