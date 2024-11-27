// Tạo ra các đối tượng không thể nào thay đổi được giá trị, có giá trị cố định
// Phải có từ khóa final đằng trước chỗ khai báo name và age
// Phải có từ khóa const trước chỗ constructor
class Animal {
  // Thuộc tính
  final String name;
  final int age;

  // Constant constructor
  const Animal(this.name, this.age);

  // Phương thức
  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Tạo đối tượng cat từ lớp Animal sử dụng constant constructor
  const cat = Animal('Tom', 2);

  // Gọi phương thức của đối tượng cat
  cat.showInfo();
}