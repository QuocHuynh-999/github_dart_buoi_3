class Animal {
  void speak() {
    print('Animal is speaking');
  }
}
class Dog extends Animal {
  @override
  void speak() {
    print('Gau Gau');
  }
}
class Cat extends Animal {
  @override
  void speak() {
    print('Meo Meo');
  }
}

void main() {
  Animal dog = Dog();

  dog.speak();

  Animal cat = Cat();

  cat.speak();

}