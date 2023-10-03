void main() {
  print('Задания 1');
  // List<int> list = [];
  // for(int i = 0; i <= 10; i++) {
  //   list.add(i);
  // }
  // print(list);

  List<int> list2 = List.generate(11, (i) => i); 
  print(list2);




  print('Задания 2');

  List<int> list3 = List.generate(11, (i) => i); 
  print(list3);
  int? cub;
  for (int i in list3) {
    cub = i * i * i;
      print('$list3 в кубе равно $cub');
  }



  print('Задания 3');

  List<int> list4 = List.generate(11, (i) => i); 
  int summ = list4.fold<int>(0, (previousValue, element) => previousValue + element);
  
    print(summ);

  print('Задания 4');

  List<String> word = ['банан', 'груша', 'абрикос', 'какос', 'яблоко', 'ананаз'];

  word.sort();
  print(word);


  print('Задания 5');
  List<String> word0 = ['22', '666666', '333', '55555', '1', '4444'];

  // word0.sort((a, b) <= b.length.compareTo(b.length));

  print('Задания 6');

  List<String> word1 = ['22', '666666', '333', '55555', '1', '4444'];

  word1.sort((a, b) => a.length.compareTo(b.length));
  print(word1);


  print('Задания 7');

  List<int> numbers = [1,2,3,4,5,6,7,8,9];
  List<int> Numbers = numbers.where((number) => number % 2 == 0).toList();

  print(Numbers);

  print('Задания 8');


  List<int> nnn = [1, 2, 3, 0, 4, 5, 6];
  int sum = 0; 

  for (int number in nnn) {
    if (number == 0) {
      break; 
    }else {
      sum += number; 
    }
  }

  print(sum);


}
