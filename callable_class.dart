// Callable Class merupakan class yg bisa kita panggil seperti function
// untuk membuat callable clas, kita perlu menambahkan sebuah method bernama call() di class tersebut
// parameter dan return value ny bisa kita sesuaikan
// setelah membuat object ny, kita bisa langsung memanggil method call() tersebut langsung menggunakan nama object ny saja
// jadi callable class ini mirip dengan function/method

class Time {
  final int first;
  final int second;

  Time(this.first, this.second);

  // kita buat callable class nya
  // bebas ya, mau menggunakan parameter atau pun return value nya bebas
  int call() => first + second;
}

void main() {
  var time = Time(50, 30);
  // nah kita bisa langsung panggil menggunakan object nya.
  // jadi seperti ini
  time();
  print(time());
  // jadi ini adalah callable class
}
