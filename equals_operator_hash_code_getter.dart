// Equals Operator adalah cara membandingkan kedua object sama atau tidak tergantung lokasi memory
// jika kita ingin meng override operator ==, maka kita bisa buat logika untuk membandingkan isi dari object nya
// bukan dari lokasi memory nya

// HashCode Getter adalah cara untuk mengetahui kode unik dari object kita
// hashcode selalu berbarengan dengan equals operator,
// jika equals ny true, maka kode unik dari hashcode ny pun harus sama,jangan berbeda
// nah supaya biar hasil hashcode/kode unik nya sama, kita bisa meng-override
// menggunakan cara HashCode Getter
import 'data/category.dart';

void main() {
  var kategory1 = Category(1, 'Laptop');
  var kategory2 = Category(1, 'Laptop');
  print(kategory1 == kategory2); // hasil nya true, knp?
  // karena kita mengoverride operator ==, yg membuat isi ny ini sama walau object ny beda

  // FYI, HashCode adalah cara mengetahui data unik dari object kita
  // kita cek hashCode nya
  print(kategory1.hashCode);
  print(kategory2.hashCode);
}
