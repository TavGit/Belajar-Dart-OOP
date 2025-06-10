// Redirecting Constructor
//

// Redirecting Constructor bisa juga ke default constructor dan ke named constructor

// Redirecting Constructor > Default Constructor
// Redirecting Constructor > Named Constructor

class Person {
  String nama = "Gustav";
  String alamat = "Bekasi";

  // Wajib ada Default Constructor nya
  Person(this.nama, this.alamat);

  // Ini Redirecting Constructor ke Default Constructor
  Person.denganNama(String nama) : this("tidak ada nama", nama);
  Person.denganAlamat(String alamat) : this("tidak ada alamat", alamat);

  // Penjelasan :
  /*
  String nama > di redirect/dikirim ke default constructor nya > this("tidak ada nama", nama);
  String alamat > di redirect/dikirim ke default constructor nya > this(alamat, "tidak ada alamat");

  maka value dari parameter yg berada di named constructor itu dikirim ke default constructor,
  nah maka yg akan tampil hasil nya yg berada di default contructor itu sendiri

  */

  // Ini Redirecting Constructor ke Named Constructor
  Person.dariNamedConstructor() : this.denganNama("Asep");
}

void main() {
  var objectNama = Person.denganNama(
    "Ucok",
  ); // nah ini value ny dikirim ke default constructor > this("tidak ada nama", nama);
  print(
    objectNama.nama,
  ); // yg akan tampil hasil nya yg berada di default constructor

  var objectAlamat = Person.denganAlamat(
    "Las Vegas",
  ); // nah ini value ny dikirim ke default constructor > this("tidak ada alamat", alamat);
  print(
    objectAlamat.alamat,
  ); // yg akan tampil hasil nya yg berada di default constructor

  var object = Person.dariNamedConstructor();
  print(object.nama);
}
