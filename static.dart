/*
 Static merupakan sebuah kata kunci yg digunakan untuk membuat field dan method yg bisa diakses secara langsung,
 tanpa harus membuat object nya

 untuk menggunakan nya, kita bisa kasih kata kunci "static" lalu diikuti dengan nama field atau method nya
 dan kita bisa langsung panggil/akses dengan cara nama object nya, lalu tanda titk(.) diikuti dengan nama field atau method nya

 jika kita membuat field atau method yg static,lebih disarankan menggunakan kata kunci final
 karena jika tidak, maka field atau method ny bisa diubah
*/

// Static Field
class Event {
  // Lebih disarankan menggunakan final karena supaya tidak bisa diubah data/value nya
  static final String pembicara = "Muhammad Gustav Ibrahim";
  static final String penyelenggaraEvent = "Google Indonesia";
}

// Static Method
class Math {
  static int jumlah(int first, int second) => first + second;
}

void main() {
  // maka kita tidak perlu membuat object nya
  // langsung bisa di panggil
  // static field
  print(Event.pembicara);
  print(Event.penyelenggaraEvent);
  // jadi kita bisa langsung panggil tanpa harus membuat object nya

  // static method
  // tanpa harus membuat object
  print(Math.jumlah(25, 25));
}
