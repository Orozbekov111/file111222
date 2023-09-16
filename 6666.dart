
void main() {
  print('Задания 1');
  showUser('Erbol', 20);   //Первый параметр имя пользователя, а второй его возраст;
  print('\n');
  
  print('Задания 2');
  showList(123456);   // Первая и последняя цифра; ХЗ
  print('\n');


  print('Задания 3');
  showin(5, 10);  // Узнать гипатинузу;
  print('\n');

  print('Задания 4');
  hw(5, 5);   // Нарисовать квадрат из символов;
  print('\n');

  print('Задания 5');
  pyramid(8);   // Высота пирамиды;
  print('\n');

  print('Задания 6');
  summa('111111');   // Если в вашем слове первая буква а тогда выведит yes;
  print('\n');

  print('Задания 7');
  similar_int('456876875');   // Если в вашем слове первая буква а тогда выведит yes;
  print('\n');

  print('Задания 8');
  similar('abcde');   // Если в вашем слове первая буква а тогда выведит yes;
  print('\n');

}



// Задания 1
showUser(String name, int age) {
  print('name: $name \nage: $age');
}

// Задания 2
showList(int sss) {
  
}

// Задания 3
showin(num one, num two) {
  num Gipotenuza = (one * one + two * two);
  num two2 = 2;
  num Gipotenuza1 = (Gipotenuza / two2 / two2);
  print('one: $one \ntwo: $two \nGipotenuza: $Gipotenuza1');
}

// Задания 4
hw(int height, int wigth) {
  for(var iii = 0; iii < height; iii++)
    print(('*' + ' ') * wigth);
}

// Задания 5
pyramid(int height_pyramid) {

  for(var height = 0; height < height_pyramid; height++) {
    print(' ' * (8 - 1 - height) + '*' * (1 + height * 2));
  }
}

// Задания 6
summa(String summa1) {
  if ((summa1[0] + summa1[1] + summa1[2]) == (summa1[3] + summa1[4] + summa1[5])) {
  print('yes');
  } else {
  print('no');
  }
}

// Задания 7
similar_int(String similar_int23) {

  if(similar_int23[0] == '1') {
    print('yes');
  } else if(similar_int23[0] == '2') {
    print('yes');
  } else if(similar_int23[0] == '3') {
    print('yes');
  } else {
    print('no');
  }
  
}


// Задания 8
similar(String similar23) {

  if(similar23[0] == 'a') {
    print('yes');
  } else {
    print('no');
  }
  
}


