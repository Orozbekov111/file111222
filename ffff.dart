import 'dart:io';

void main() {
  print('Введите ваше имя:');
  String? name = stdin.readLineSync();
  print('Привет, $name!');
}