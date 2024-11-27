// Không có tham số được truyền vào
class Animal {
  // Thuộc tính
  String? name;
  int? age;

  // Phương thức
  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Tạo đối tượng cat từ lớp Animal sử dụng Default Constructor
  var cat = Animal();

  // Gán giá trị cho thuộc tính của đối tượng cat
  cat.name = 'Tom';
  cat.age = 2;

  // Gọi phương thức của đối tượng cat
  cat.showInfo();

}