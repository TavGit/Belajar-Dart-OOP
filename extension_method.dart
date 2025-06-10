/*

Extension Method adalah cara kita menambahkan method baru ke dalam class yg sudah ada,
tanpa harus mengubah isi dari class tersebut.

dan jangan lupa kita juga bisa mengakses field di dalam class yg sudah ada menggunakan extension method

Cara membuat extension method :
sama seperti kita membuat class pada umum nya, cuman beda nya kita perlu menambahkan kata kunci "extension" nama extension ny apa
lalu kata kunci "on" nama class ny apa

contoh :

extension Tambahan on Computer {

}

*/

// Contoh penggunaan extension method

class Software {
  var aplikasi = "VS Code";
  var motherboard = "Qwerty h81";

  void coding(String pemrogramman) {
    print("$pemrogramman aplikasi $aplikasi"); // ini method ke 1
  }
}

extension TambahanSoftware on Software {
   // nah method hardware ini akan otomatis tertambah ke dalam class Software
  String hardware({String? component}) {
    // kita juga bisa akses field di dalam class Software tersebut
    return "nama Motherboard $motherboard"; // ini method ke 2
  }
  // tanpa kita sadari ternyata class Software sudah memiliki 2 method
}

void main() {
  var bungkusSoftware = Software();
  bungkusSoftware.coding("Bahasa pemrogramman dasar");
  print(bungkusSoftware.hardware());
}
