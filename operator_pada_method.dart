 /*
 Operator pada method :

 misal kita ingin membuat sebuah method, yg memiliki operator, contoh operator aritmatika
 nah kita bisa gunakan kata kunci "operator", dan simbol operasi nya
 dan ingat jika kita membuat method yg ada operator nya, kita harus mendeklarasikan nama class nya sebelum kata kunci operator
 dan untuk parameter ny pun sama, kita harus deklarasikan nama class ny di dalam parameter
 dan klo kita menggunakan operator pada method kita wajib juga menggunakan kata kunci "return"

*/

// CONTOH :

class Perpustakaan {
  int jumlahBuku = 0; // ini field

  // method
  Perpustakaan operator +(Perpustakaan buku) {
    var rakBuku = Perpustakaan();
    rakBuku.jumlahBuku = jumlahBuku + buku.jumlahBuku;
    return rakBuku;
  }
}


// Penjelasan pada method :
// Perpustakaan > ini kita panggil nama class nya
// operator + > ini menandakan bahwa kita membuat method yg ada operator/operasi nya, tanda + ini operasi pertambahan
// (Perpustakaan buku) > di dlm parameter, kita harus mendeklarasikan nama class nya lalu diikuti dengan nama parameter nya yaitu : buku
// var rakBuku = Perpustakaan(); > ini object, yg membungkus class Perpustakaan(), memiliki variable rakBuku
// rakBuku.jumlahBuku > kita akses field lewat object "rakBuku"
// = jumlahBuku + buku.jumlahBuku; > ini kita jumlah kan field dengan parameter buku yg mengakses field
// return rakBuku; > ini mengembalikan nilai object "rakBuku"


void main() {
  var bukuCoding = Perpustakaan();
  bukuCoding.jumlahBuku = 50;

  var bukuHoror = Perpustakaan();
  bukuHoror.jumlahBuku = 80;

  var jumlahBukuDiPerpustakaan = bukuCoding + bukuHoror;
  print("Jumlah buku ${jumlahBukuDiPerpustakaan.jumlahBuku}");
}
