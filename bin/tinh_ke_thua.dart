// Lớp cha (Parent class) là lớp mà lớp con kế thừa từ nó
class Animal {
  // Thuộc tính
  String name;
  int age;

  // Constructor của lớp cha
  Animal(this.name, this.age);

  // Phương thức của lớp cha
  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

// Lớp con (Child class) kế thừa từ lơp cha (Parent class)
class Dog extends Animal {
  // Thuộc tính của lớp con (có thể thêm thuộc tính mới)
  String breed;

  // Constructor của lớp con
  Dog(String name, int age, this.breed) : super(name, age);

  // Phương thức của lớp con
  void bark() {
    print('Gâu Gâu');
  }
}

// Lớp con (Child class) kế thừa từ lơp cha (Parent class)
class Cat extends Animal {
  // Constructor của lớp con
  Cat(String name, int age) :super(name, age);

  // Phương thức của lớp con
  void meow() {
    print('Meo meo');
  }
}

void main() {
  // Tạo đối tượng từ lớp dog
  var dog = Dog('Tom', 2, 'Husky');

  // Gọi phương thức của đối tượng
  dog.showInfo();
  dog.bark();

  // Tạo đối tượng từ lớp Cat
  var cat = Cat('Jerry', 3)

  // Gọi phương thức của đối tượng
  cat.showInfo();
  cat.meow();
}