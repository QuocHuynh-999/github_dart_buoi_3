class Animal {
  // Thuộc tính
  String name;
  int age;

  // Biến static để lưu cache
  // Đây là một bản đồ (Map) dùng để lưu trữ các đối tượng Animal đã được tạo ra.
  // Điều này giúp tiết kiệm tài nguyên bằng cách tái sử dụng các đối tượng Animal có cùng tên.
  static final Map<String, Animal> _cache = <String, Animal>{};

  // Private Named Constructor
  Animal._internal(this.name, this.age);

  // Factory constructor
  factory Animal(String name, int age) { // Đây là định nghĩa của một constructor factory.
                                        // Constructor factory được sử dụng để kiểm soát cách một đối tượng mới được tạo ra.
                                       // Nó có thể trả về một đối tượng mới hoặc một đối tượng hiện có.

    if (_cache.containsKey(name)) {// Kiểm tra xem cache _cache đã chứa một đối tượng Animal với name đã cho hay chưa.

      return _cache[name]!;// Nếu đối tượng Animal với name đã tồn tại trong cache, trả về đối tượng đó.
                          // Dấu chấm than ! dùng để đảm bảo rằng giá trị trả về không phải là null.
    } esle {
      final animal = Animal._internal(name, age);// Nếu đối tượng Animal với name chưa tồn tại trong cache,
                                                // tạo một đối tượng mới bằng cách sử dụng constructor riêng tư _internal.

      _cache[name] = animal;// Lưu đối tượng animal mới tạo vào cache _cache với name là khóa.

      return animal;// Trả về đối tượng animal vừa được tạo.
    }
  }

  // Phương thức
  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Tạo đối tượng từ lớp Animal sử dụng Factory constructor
  var cat1 = Animal('Tom', 2);
  var cat2 = Animal('Tom', 3);
  var dog = Animal('Jerry', 2);

  // Kiểm tra xem cat1 và cat2 có cùng đối tượng hay không
  print(identical(cat1, cat2)); // true
  print(identical(cat1, dog)); // false

  // Gọi phương thức của các đối tươnng
  cat1.showInfo();
  cat2.showInfo();
  dog.showInfo();
}
