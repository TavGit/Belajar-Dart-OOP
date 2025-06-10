// Variable Shadowing adalah nama variable yg memiliki duplikat, cuman yg akan tereksekusi itu yg berada di scope atas
// beda nya di ruang lingkup area doang atau scope
// maksud ny gmn?
// langsung aja kita liat contoh nya


// Contoh: 
class DataDiri {
  // ini field
  String nama = "Gustav"; // ini yg akan tereksekusi
  String alamat = "Lampung"; // ini yg akan tereksekusi

  // ini constructor
  DataDiri(String nama, String alamat) { // nah si parameter constructor ini memiliki nama variable yg sama kaya di field
    nama = nama;
    alamat = alamat;
  }
}

void main() {
  var objectDataDiri = DataDiri("Muhammad", "Bekasi"); // nah ini kita isi value dari parameter di constructor
  // nah harus yg akan tereksekusi si "Muhammad" dan "Bekasi"
  print(objectDataDiri.nama); 
  print(objectDataDiri.alamat);
  // cuman karena disini terjadi variable shadowing, maka yg akan tereksekusi ya nama variable yg berada di field
  // Output : "Gustav" dan "Lampung"
}
