class Animal {
  // Thuộc tính private: trong dart không có từ khóa private nên khi dùng private thì có dấu gạch trước từ khóa
  String _name;
  int _age;

  // Constructor
  Animal(this._name, this._age);

  // Getter để lấy ra giá trị của thuộc tính private
  String get name => _name;

  // Setter để thay đổi giá trị của thuộc tính private
  set name(String value) {
    if(name.isNotEmpty) {// isNotEmpty: không rỗng
      _name = name;
    }
  }

  // Getter để lấy ra giá trị của thuộc tính private
  int get age => _age;

  // Setter để thay đổi giá trị của thuộc tính private
  set age(int value) {
    if(age > 0) {
      _age = age;
    }
  }

  void showInfo() {
    print('Name: $_name, Age: $_age');
  }
}

void main() {
  var cat = Animal('Tom', 2);

  cat.name = 'Jerry';
  cat.age = 3;

  cat.showInfo();
}