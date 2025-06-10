// Nah supaya tidak terjadi variable shadowing, kita bisa gunakan alternatif kata kunci "This"
// This adalah kata kunci yg mengakses object saat ini, lalu di ikuti dengan nama variable nya

// Contoh: 
class DataDiri {
  // ini field
  String nama = "Gustav"; // ini tidak akan tereksekusi
  String alamat = "Lampung"; // ini tidak akan tereksekusi

  // ini constructor
  DataDiri(String nama, String alamat) { // nah si parameter constructor ini memiliki nama variable yg sama kaya di field
    this.nama = nama; // kita kasih kata kunci this, arti nya, yg akan tereksekusi ialah si value dari parameter constructor ini
    this.alamat = alamat; // kita kasih kata kunci this, arti nya, yg akan tereksekusi ialah si value dari parameter constructor ini
  }
}

void main() {
  var objectDataDiri = DataDiri("Muhammad", "Bekasi"); // nah ini kita isi value dari parameter di constructor
  print(objectDataDiri.nama); 
  print(objectDataDiri.alamat);
  // Output nya :  "Muhammad" dan "Bekasi".
}