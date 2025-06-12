  // Method Overriding pada Inheritance = adalah cara untuk mendeklarasikan ulang method yg berada di class parent.
  // tpi nama method ny harus sama persis

class Manager {
  String? name;

  void sayHello(String name) {
    print(
      "Halo nama saya ${this.name} saya adalah seorang Manager di Perusahaan ini",
    );
  }
}

class Karyawan extends Manager {

  // method overriding
  // mendeklarasikan ulang method yg berada di class parent
  void sayHello(String name) {
    print("Hallo nama saya ${this.name} saya seorang Karyawan");
  }
}

void main() {
  var manager = Manager();
  manager.name = "Gustav";
  manager.sayHello('${manager.name}');

  var karyawan = Karyawan();
  karyawan.name = "Budi";
  karyawan.sayHello('${karyawan.name}');
}
