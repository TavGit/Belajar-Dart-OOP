// Di constructor kita tidak bisa membuat constructor lebih dari satu
// nah kita bisa gunakan named constructor untuk membuat constructor bisa lebih dari satu
// tapi ingat, untuk named constructor ny harus wajib berbeda tidak boleh sama
// cara membuat nya bisa sepert ini :
// namaClass.namaConstructor

// Contoh

class Person {
  String nama = "Gustav";
  String alamat = "Bekasi";

  // ini constructor pada umum nya
  Person(this.nama, this.alamat);

  // Ini Named Constructor
  Person.denganNama(this.nama);
  Person.denganAlamat(this.alamat);
}



void main() {
  // Untuk membuat Object dan menakses Named Constructor, kita bisa buat seperti ini :
  // namaClass.namaConstructor()

  var objectNama = Person.denganNama("Ibrahim"); // ini cara mengakses named constructor di object
  print(objectNama.nama);

  var objectAlamat = Person.denganAlamat("Jakarta");  // ini cara mengakses named constructor di object
  print(objectAlamat.alamat);
}
