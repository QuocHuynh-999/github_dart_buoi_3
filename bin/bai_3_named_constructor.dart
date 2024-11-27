// Không được trùng tên class
// cú pháp: Animal.(tên gì cũng được) (giá trị truyền vào) {
//           }
class Animal {
  // Thuộc tính
  String? name;
  int? age;

  // Constructor chính
  Animal(this.name, this.age);

  // Named constructor - khởi tạo đối tượng với giá trị mặc định
  Animal.init() {
    name = 'Unknown';
    age = 0;
  }

  // Named constructor - chỉ khởi tạo giá trị cho thuộc tính name
  Animal.initWithName(String name) {
    this.name = name;
    age = 0;
  }

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
