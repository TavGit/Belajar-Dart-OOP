// Inheitance

class Manager {
  // Ini class Parentt
  String? name;

  void sayHallo(String name) {
    print("Halo nama saya ${this.name}");
  }
}

// class Parent(Orang tua) = class Manager
// class Child(Anak) = class Karyawan

// class Manager itu adalah class Parent(Orang tua) nya, yg secara otomatis, field dan method yg dimiliki oleh class Manager
// akan diturunkan juga ke class Karyawan = clas Child(Anak)

class Karyawan extends Manager {}

void main() {
  // mengakses method inheritance
  var manager = Manager();
  manager.name = "Gustav";
  print("Manager di Perusahaan ini ialah ${manager.name}");

  var karyawan = Karyawan();
  karyawan.name = "Budi";
  print("${karyawan.name} adalah seorang karyawan di perusahaan ini");
}
