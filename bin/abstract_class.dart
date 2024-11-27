// Abstract class
abstract class Animal {
  // Gọi phương thức trừu tượng, không có phần thân
  void speak();

  // Phương thức đã được triển khai
  void breathe() {
    print('Animal is breathing');
  }
}

class Dog extends Animal {
  // Phương thức speak phải được triển khai
  @override
  void speak() {
    print('Gau Gau');
  }
}
void main() {
  // khởi tạo đối tượng dog
  Dog dog = Dog();

  // Gọi phương thức speak và breathe
  dog.speak();
  dog.breathe();
}