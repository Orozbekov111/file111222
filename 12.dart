// 1) Country - класс имеет поле название, климат и метод описание
// 1 вариант (метод должен принтануть значения)
// 2 вариант (метод должен не принтовать, а возвращать "return" название,
// место и климат)
// 2) Car - имеет поле мощность, цвет, название, цена и метод описание (метод
// должен не принтовать, а возвращать "return" характеристики машины)
// 3) 1 Создайте класс Phone, который содержит
// переменные number, model и weight.
// 1 Создайте три экземпляра этого класса.
// 2 Выведите на консоль значения их переменных.программирование для программистов кто хочет ждать этого кто хочет этого да некто не хочет

// Класс Country
class Country {
  String name;
  int age;

  Country(this.name, this.age);

  void printValues() {
    print('name: $name');
    print('age: $age');
  }

  String returnValues() {
    return 'name: $name, age: $age';
  }
}

// Класс Car
class Car {
  int power;
  String color;
  String name;
  double price;

  Car(this.power, this.color, this.name, this.price);

  String returnCar() {
    return 'power: $power \n color: $color \n name: $name \n price $price';
  }



}

// Класс Phone
class Phone {
  String number;
  String model;
  double weight;

  Phone(this.number, this.model, this.weight);
}





void main() {
  var c1 = Country('Islam', 18);
  var c2 = Country('Erhan', 20);
  
  c1.printValues();
  print(c2.returnValues()); 

  var car1 = Car(150, 'Красный', 'Toyota Camry', 25000.0);
  var car2 = Car(200, 'Синий', 'Honda Civic', 22000.0);

  print(car1.returnCar());
  print(car2.returnCar());

  var phone1 = Phone('123', 'iPhone 12', 0.2);
  var phone2 = Phone('321', 'Samsung Galaxy S21', 0.18);

  print('Телефон 1: Номер - ${phone1.number}, Модель - ${phone1.model}, Вес - ${phone1.weight} кг');
  print('Телефон 2: Номер - ${phone2.number}, Модель - ${phone2.model}, Вес - ${phone2.weight} кг');
}