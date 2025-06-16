// Abstract Method

abstract class Animal {
  String? name;

  // abstract method
  void run();
}

class Cat extends Animal {
  void run() {
    print("Kucing $name sedang makan");
  }
}

void main() {
  // cara menggunakan abstract method pada object
  var cat = Cat();
  // isi value dari field di abstract class parent nya
  cat.name = "Anggora";
  // panggil abstract method nya
  cat.run();
}
