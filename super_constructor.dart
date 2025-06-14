class Manager {
  String? name; // ini field 

  Manager(String name) { // > constructor ini memiliki paremeter name
    this.name = name;
    print("Hai nama saya ${this.name}");
  }
}

class Karyawan extends Manager {
  @override
  Karyawan(String name) : super(name); // > value dari parameter name di kirim ke parameter 'name' yg berada di constructor class parent
  // Catatan > parameter constructor yg ada di class child tidak harus sama dengan parameter constructor yg berada di class parent
  // tpi tetap nilai/value yg  berada di paremeter constructor class child akan di kirim ke parameter constructor di class parent
}

void main() {
  var manager = Manager("Gustav");
  manager.name;

  var karyawan = Karyawan("Zidan"); // > nilai/value Zidan > dikirim ke paremeter name constructor yg berada di class parent
  karyawan.name;
}
