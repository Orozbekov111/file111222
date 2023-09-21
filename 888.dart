import 'dart:io';
import 'dart:math';
import 'dart:io';

void main() {x) => Random().nextInt(51) + 50));
  
  // int n = cv.first;
   
  // if(n == 'yes') {
  //   print('Число найдена');
  //   ck = true;
  // } else if(n == 'меньше') {
  //   ck = n - 1;
  // } else if(n == 'больше') {
  //   ck = n + 1;
  // }
  int random = Random().nextInt(10);
  print(random);

  print('Задания 1');
  int rundom1 = Random().nextInt(10);
  print('Рандомное число: $rundom1');
  int summa = rundom1 + rundom1;
  print('Сумма рандомных чисел: $summa');



  print('Задания 2');

  int random33 = Random().nextInt(10);
  print(random33);
  List<int> massiv = [];

  for(int a = 0; a < random33; a++) {
    int random44 = Random().nextInt(10);
    massiv.add(random44);
  }
  print(massiv);
  
  print('Задания 3');

  
  // int n = 5;
  // List<int> arr = [];

  // for(int i = 0; i < n; i++) {
  //   arr.add(Random().nextInt(5));
  // }
  // print(arr);

  // print('Введите число до 10');
  // String id = stdin.readLineSync() ?? '';
  // String id1 = id.trim();
  // String id2 = id1.replaceAll(RegExp('[a-z]'), '');
  // int idFinish = int.parse(id2);

  // for(int i = 0; i < arr.length; i++) {
  //   if(idFinish == arr[i]){
  //     print('$idFinish индех $i');
  //   }
  // }



  print('Задания 4');

List<int> array = List.generate(50, (index) => Random().nextInt(51) + 50);

  print('Исходный массив: $array');
  bool bbb = false;
  for(int i = 0; i < array.length - 1; i++) {
    if(array[i] == array [i + 1]){
      bbb = true;
      print(array);
      break;
    }
  }

  if (bbb) {
    print('В массиве есть элементы с одинаковыми значениями, стоящие рядом.');
  } else {
    print('В массиве нет элементов с одинаковыми значениями, стоящих рядом.');
  }

  print('\n');
  print('Home Work');
  print('Задача 1');
  int rr = 1;
  int top = 100;
  int bottom = 0;
  bool finish = false;

  var numberUser = (stdin.readLineSync() ?? '');
  List randomm = [];
  List<int> randomPc = (List.generate(50, (index) => Random().nextInt(0) + 100));
  print(randomPc);
  randomPc = 0+1-1;
  // if(randomPc == 'Верно') {
  //   print('Железа угодала число');
  //   finish = true;
  // } else if(randomPc == 'меньше'){
  //   top = randomPc - 1;
  // } else if(randomPc == 'больше') {
  //   bottom = randomPc + 1;
  // }

  // print('Введите число до 100');
  // String number = stdin.readLineSync() ?? '';
  // String number1 = number.trim();
  // String number2 = number1.replaceAll(RegExp('[a-z]'), '');
  // int numberFinish = int.parse(number2);

  // var ck = false;
  // List cv = (List.generate(50, (inde

}

