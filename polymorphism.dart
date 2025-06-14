// Polymorphism adalah kemampuan sebuah object yg bisa berubah bentuk menjadi bentuk lain
// polymorphism sangat erat hubungan nya dengan inheritance(pewarisan)
// bahasa gampang nya, polymorphism itu cara object berubah bentuk tergantung dari turunan nya

// Contoh : 

// Class Parent
class Keluarga {
  String? name;

  Keluarga(this.name);
}

// Class Keluarga mempunyai class child, yaitu Class OrangTua
// Class OrangTua mempunyai class child, yaitu Class Anak

// nah otomatis Class Anak itu turunan dari Class Keluarga


// Class Child dari Class Keluarga
class OrangTua extends Keluarga {
  @override
  OrangTua(String namaOrangTua) : super(namaOrangTua);

}

// Class Child dari Class OrangTua
class Anak extends OrangTua {
  @override
  Anak(String namaAnak) : super(namaAnak);
}

// Alur nya :
// Class Anak mempunyai Class Parent yaitu > Class OrangTua
// Class OrangTua mempunyai Class Parent yaitu > Class Keluarga
// Class Keluarga adalah Class Parent Utama


void main() {
  // buat object yg bertipe data kan class itu sendiri.
  // sebagai contoh variable cemara itu bertipe data kan class Keluarga
  // yg arti nya, variable cemara hanya bisa di isi value ny dari turunan ny class Keluarga
  Keluarga cemara = Keluarga("3G");
  print(cemara); // Output nya = Instance of 'Keluarga'


  // object ny secara otomatis berubah bentuk
  cemara = OrangTua("Ayah & Mamah");
  print(cemara); // Output nya = Instance of 'OrangTua'

  cemara = Anak("Gustav, Gathan, Geisya");
  print(cemara); // Output nya = Instance of 'Anak'

}
