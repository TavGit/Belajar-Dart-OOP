class Keluarga {
  String? name;

  Keluarga(this.name);
}

class OrangTua extends Keluarga {
  @override
  OrangTua(String namaOrangTua) : super(namaOrangTua);
}

class Anak extends OrangTua {
  @override
  Anak(String namaAnak) : super(namaAnak);
}

void sayHello(Keluarga keluarga) {
  print("Hello ${keluarga.name}");
}

void main() {
  // kita bisa panggil method sayHello tpi tidak harus bertipe data kan class Keluarga
  // yg penting class nya itu turunan dri class keluarga seperti ini
  sayHello(Keluarga("3G"));
  sayHello(OrangTua("Ayah & Mamah"));
  sayHello(Anak("Gustav, Gathan, Geisya"));
}
