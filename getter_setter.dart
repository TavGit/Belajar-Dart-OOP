// nah supaya kita bisa mengakses data field atau method yg access modifier/tidak bisa di akses dari luar
// kita bisa panggil getter, untuk mengubah kita bisa panggil setter
// btw code getter dan setter ada di filer kota_getter_setter.dart

// kita import dlu file nya
import 'data/kotak_getter_setter.dart';

void main() {
  var kotak = Kotak();
  // getter dan setter width
  kotak.width =
      100; // > ini menggunakan cara Setter, mengubah data field yg access modifier.
  print(
    kotak.width,
  ); // > untuk mengakses/mengambil data field yg access modifier, menggunakan cara Getter

  // getter dan setter height
  kotak.height = 150; // menggunakan cara setter untuk mengubah data field access modifier
  print(kotak.height); // menggunakan cara getter untuk mengambil/mengakses data field access modifier
}
