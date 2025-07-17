// Equals Operator adalah cara membandingkan kedua object sama atau tidak tergantung lokasi memory
// jika kita ingin meng override operator ==, maka kita bisa buat logika untuk membandingkan isi dari object nya
// bukan dari lokasi memory nya
import 'data/category.dart';

void main() {
  var kategory1 = Category(1, 'Laptop');
  var kategory2 = Category(1, 'Laptop');
  print(kategory1 == kategory2);// hasil nya true, knp?
  // karena kita mengoverride operator ==, yg membuat isi ny ini sama walau object ny beda
}

