abstract class Animal {
  void speak();

  void breathe() {
    print('Animal is breathing');
  }
}

mixin Flyer {
  void fly() {
    print('Flying');
  }
}

mixin Swimmer {
  void swim() {
    print('Swimming');
  }
}
class Bird extends Animal with Flyer, Swimmer {
  @override
  void speak() {
    print('Chirp chirp');
  }
}

void main() {
  var bird = Bird();

  bird.speak();
  bird.fly();
  bird.breathe();
  bird.swim();
}