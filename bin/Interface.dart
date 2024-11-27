// Abstract class
abstract class Animal {
  // Phương thức trừu tượng không có phần thân
  void speak();

  // Phương thức đã được triển khai
  void brearhe() {
    print('Animal is breathing');
  }
}
// Interface

abstract class Flyyable {
  // Phương thức trừu tượng, không có phần thân
  void fly();
}

class Bird extends Animal implements Flyyable {
  // Phương thức speak phải được triển khai
  @override
  void speak() {
    print('Chirp chirp');
  }

  @override
  void fly() {
    print('Bird is flying');
  }
}

void main() {
  // Khởi tạo đối tương Bird
  var bird = Bird();

  // Gọi phương thức speak, breathe và fly

  bird.speak();
  bird.fly();
  bird.brearhe();
}
