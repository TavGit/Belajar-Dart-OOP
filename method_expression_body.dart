// Method Expression Body adalah method yg hanya satu baris code saja, tanpa tanda kurung kurawal {}
// mirip seperti kita membuat sebuah anonymous function
// bahkan untuk yg function retrun value pun bisa, tanpa menggunakan kata kunci 'return'
// untuk menggunakan method expression body, kita cukup gunakan tanda panah seperti ini =>

class Computer {
  // Method Expression Body
  void startUp() => print("Komputer Menyala"); // hanya satu baris code saja
  void shutDown() => print("Komputer Mati"); // hanya satu baris code saja

  // ini untuk yg return value
  String getOperatingSystem() =>
      "Windows"; // hanya satu baris code saja, tanpa menggunakan kata kunci 'return'
}

void main() {
  // panggil method nya
  var methodExpressionBody = Computer();
  methodExpressionBody.startUp();
  methodExpressionBody.shutDown();
  print(methodExpressionBody.getOperatingSystem());
}

