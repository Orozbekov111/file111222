import 'dart:io';
// import 'dart:svg';sd


void main() {

  print('Задача 1');   // Создайте и заполните массив. Выведите первый и последний элемент списка.
  showList  ([1, 2, 3, 4, 5]);
  
  print('Задача 2');   // Дано трехзначное число. Найдите произведение их цифр.
  int sum = 222;
  String sum1 = sum.toString();
  int b1 = int.parse(sum1[0]);
  int b2 = int.parse(sum1[1]);
  int b3 = int.parse(sum1[2]);
  int b4 = b1 * b2 * b3;
  print(b4);

  print('Задача 3'); // Дано трехзначное число. Замените среднюю цифру на ноль.

  int ttt = 123;
  String ttt1 = ttt.toString();
  int t1 = int.parse(ttt1[0]);
  int t2 = int.parse(ttt1[1]);
  int t3 = int.parse(ttt1[2]);
  t2 = 0;
  String t4 = t1 .toString()+ t2.toString()+ t3.toString(); 
  int t5 = int.parse(t4);
  print(t5);

  print('Задача 4');   //Дан номер дня недели. Выведите название дня недели. Решение через if и switch case.
    var plan = 4;
  switch(plan) {
    case 1:
    print('Понедельник: Встань по раньше');
    break;
    case 2:
    print('Вторник: Встань по раньше');
    break;
    case 3:
    print('Среда: Встань по раньше');
    break;
    case 4:
    print('Четверг: Встань по раньше');
    break;
    case 5:
    print('Пятница: Встань по раньше');
    break;
    case 6:
    print('Суббота: Встань по раньше');
    break;
    case 7:
    print('Воскресениье: Встань по раньше');
    break;
    default:
    print('Не правильная цифра');
  }



  print('Задача 5');   // Вывести на экран 8 раз фразу "Loading...". Используйте цикл for
  
  for (var i = 0; i < 8; i++){
    print('$i Loading...');
  }
  print("Loading..." * 8);
  


  print('Задача 6');   // Даны три числа. Если сумма двух из них равна третьему, то выведите такое равенство, если нет, то выведите произведение всех чисел.

  int rttt = 333;
  String rttt1 = rttt.toString();
  int rt1 = int.parse(rttt1[0]);
  int rt2 = int.parse(rttt1[1]);
  int rt3 = int.parse(rttt1[2]);
  int rt4 = rt1 * rt2 * rt3;

  if(rt1 + rt2 == rt3){
    print('$rt1 + $rt2 = $rt3');
  }else {
    print(rt4);
  }



  print('Задача 7');   // Анкета. С помощью stdin sdout реализуйте программу, которая запрашивает у пользователя имя, возраст, адрес, хобби. В конечном итоге вывести на экран информацию о пользователе:

  print('Ваше имя:');   
  String name = stdin.readLineSync() ?? "";
  String name1 = name.trim();
  String nameFinish = name1.replaceAll(RegExp('[0-9]'), '');

  print('Ваш возраст:');
  String age = stdin.readLineSync() ?? "";
  String age1 = age.trim();
  String ageFinish = age1.replaceAll(RegExp('[a-z]'), '');
  // int age3 = int.parse(stdin.readLineSync() ?? " ");

  print('Ваш адрес:');
  String address = stdin.readLineSync() ?? "";
  String addressFinish = address.trim();
   
  print('Вашe хобби:');
  String hobby = stdin.readLineSync() ?? "";
  String hobby1 = hobby.trim();
  String hobbyFinish = hobby1.replaceAll(RegExp('[0-9]'), '');

  print('Ваше имя: $nameFinish \nВаш возраст: $ageFinish \nВаш адрес: $addressFinish \nВашe хобби: $hobbyFinish');



  print('Задача 8');   // Поставить проверку к предыдущему заданию. Создайте переменные myName myAge и.т.д
  
  

  if(nameFinish == 'erbol'){
    print('Пользователь: $nameFinish «У нас одинаковое имя»');
  } if(ageFinish == '19'){
    print('Пользователь: $nameFinish «Мы ровесники»');
  }if(addressFinish == 'bishkek'){
    print('Пользователь: $nameFinish «Мы соседи»');
  }if(hobbyFinish == 'music'){
    print('Пользователь: $nameFinish «У нас одинаковое хобби»');
  }if(nameFinish == 'erbol' && ageFinish == '19' && addressFinish == 'bishkek' && hobbyFinish == 'music'){
    print('Пользователь: $nameFinish «Давай дружить»');
  }else{
    print('Пользователь: $nameFinish вы успешно зарегистрировались');
  }




  print('Задача 9');   // В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
  int sumb = 0;
  int count = 100;

  for (int i = 1; i <= count; i++) {
    sumb += i;
  }

  double average = sumb / count;

  print('Среднее арифметическое: $average');

  print('Задача 10');   // При заданном целом числе n посчитайте n + nn + nnn.
  int n = 5;

  String nString = n.toString();
  String nnString = n.toString() + n.toString();
  String nnnString = n.toString() + n.toString() + n.toString();

  int sumbn = n + int.parse(nnString) + int.parse(nnnString);

  print('Сумма чисел: $sumbn');



  print('Задача 11');   

  int age0 = 25;

  if(age0 < 7) {
    print('"Вам в садик"');
  }else if(age0 > 7 && age0 < 18) {
    print('"Вам в школу"');
  }else if(age0 > 19 && age0 < 23) {
    print('"Вам в универ"');
  }else if(age0 > 23 && age0 < 60) {
    print('"Вам на работу"');
  }else if(age0 > 60 && age0 < 100) {
    print('"Вы пенсионер"');
  }else {
    print('Да ты безсмертный');
  }



  print('Задача 12');   // Дано шестизначное число, если сумма первых чисел равна сумме вторых трех чисел, вывести true, а иначе вывести false.
  
  String summa11 = '123456';
  if ((summa11[0] + summa11[1] + summa11[2]) == (summa11[3] + summa11[4] + summa11[5])) {
  print('yes');
  } else {
  print('no');
  }
  
  print('Задача 13');   // 

  while(true){
    var abc = 0;
    var abc1 = stdin.readLineSync();
    
    if(abc == abc1){
      print('правильно');
    }else if(abc != abc1){ø
      print('не правильно');
    }else {
      print('вы не ввели число');
    }
    abc++;
  }

}

showList(List numbers) {
  print('${numbers.first} ${numbers.last}');
}