// Factory Constructor

class Database {
  // Default Constructor
  Database() {
    print("Create new database connection");
  }
  // static ibarat ny variable global
  static Database database = Database();
  /*
  jadi klo kita menggunakan static,
  kita bisa buat tipe data dari class itu sendiri di variable
  */
  // berarti variable database bisa diakses/digunakan untuk field atau method yg berada di dlm class Database

  // Factory Constructor
  factory Database.get() {
    return database; // mengembalikkan variable database yg bertipe data kan Database
  }

  // .get > ini named constructor, dan tidak harus "get" bisa juga kata yg lain
}

void main() {
  var database1 = Database.get(); // object yg sama
  var database2 = Database.get(); // object yg sama

  print(database1 == database2);
  // kenapa true?, karena kedua object tersebut sama, sama" menghasilkan return value dari factory database
  // dan hanya ditampilkan satu kali.
}
