// Constructor adalah method yg akan dipanggil saat pertama kali object dibuat
// untuk membuat constructor kita tidak perlu menggunakan kata kunci void dan return value
// sama seperti method, di constructor kita juga bisa memberi parameter
// dan pada saat kita mmebuat object, lalu kita panggil class nya, kita wajib mengisi value dari parameter yg ada di constructor

// ibarat nya tuh kek gini
// kaya kita membuat method biasa, cuman beda nya ini kg ada kata kunci void dan tidak bisa return value
// dan nama method ny harus sesuai dengan nama class nya

class Manusia {
  String nama = "User";
  String? alamat;

  // ini Constructor
  Manusia(String paramNama, String paramAlamat) {
    nama = paramNama;
    alamat = paramAlamat;
  }
}

void main() {
  var bungkusConstructor = Manusia("Gustav", "Bekasi"); // value dari parameter yg ada di constructor wajib kita isi
  print(bungkusConstructor.nama);
  print(bungkusConstructor.alamat);
}
