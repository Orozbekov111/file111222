
import 'dart:io';
import 'dart:math';

void main() {
  addFunction();
  summ(5);
}



// Задания 1

addFunction(){
    int a = Random().nextInt(100);
    int b = Random().nextInt(100);
    int d = a + b;
    print('$a + $b = Введите ваш ответ');
    int c = int.parse(stdin.readLineSync() ?? '55');

    if(c == d){
      print('Правильно $d');
    }else {
      addFunction();
    }
  } 



// Задания 2

gameCost() {
  int a = Random().nextInt(6);
  print(a);
  print('1- бросить еще раз, 2 - закончить.');
  int b = int.parse(stdin.readLineSync() ?? '');

  if(b == 1) {
    gameCost();
  }else {
    print('«wasted»');
  }
}



// Задания 3

chisloStepen(int a, int b) {
 
 if (b == 0) {
    return 1;
  }else {
    return a * chisloStepen(a, b - 1);
  }
  
}



// Задания 4

summ(int n) {
  if(n < 1) {
    return 1;
  }else {
    summ(n - 1) + summ(n - 1);
  }
}

