// ada kala nya kita ingin membuat constructor yg immutable atau tidak bisa di ubah data nya
// nah kita bisa gunakan Constant Constructor
// Constant Constructor adalah cara agar constructor yg kita buat ini tidak bisa di ubah data nya atau immutable
// nah cara nya, kita bisa gunakan kata kunci "const" sebelum nama constructor nya
/*
FYI keuntungan nya menggunakan constant constructor pada saat nanti kita membuat object
nah object yg kita buat akan secara otomatis disamakan.
jadi misal, kita punya 2 object, nah kan seharus nya 2 object tersebut beda kan, 
nah klo kita menggunakan const constructor, 2 object itu akan disamakan 
*/
// dan untuk field nya, kita wajib menggunakan kata kunci "final"

// Contoh
class Point {
  // Field
  // wajib menggunakan kata kunci final, yg arti nya immutable data nya
  // kita tidak isi value nya, why? karena nanti value ny kita isi pada saat memanggil constructor ny di object
  final int a;
  final int b;

  // Constant Constructor
  const Point(this.a, this.b);
}

void main() {
  // Kedua Object ini akan disamakan
  var point1 = const Point(10, 10);
  var point2 = const Point(10, 10);
  print(point1 == point2); // hasilnya = true, karena kedua object disamakan

  // klo kita tidak menggunakan const, kedua object tersebut berbeda, yg hasil nya menjadi = false
  // Contoh tidak menggunakan const
  var object1 = Point(5, 5);
  var object2 = Point(5, 5);
  print(object1 == object2); // hasil nya = false
}
