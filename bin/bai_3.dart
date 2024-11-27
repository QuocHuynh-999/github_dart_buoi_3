class Animal {
  // Thuộc tính
  String name;
  int age;

  // Constructor
  Animal(this.name, this.age);

  // Phương thức
  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Tạo đối tượng cat từ lớp Animal
  var cat = Animal('Tom', 2);

  // Gọi phương thức của đối tượng cat
  cat.showInfo();

}