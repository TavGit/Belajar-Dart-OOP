// Interface adalah cara untuk meng implements class
// jadi misal kita membuat class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
// interface dari class tersebut, bisa kita gunakan untuk class lain
// nah untuk membuat class menjadi interface, kita bisa gunakan "Implements"
/*
 jika sebuah class kita jadi kan dia interface, maka secara otomatis, kita harus mengdeklarasikan ulang semua method dan field 
 yg terdapat di class tersebut.
*/

class Mobil {
  // field
  String namaMobil = "";

  // method
  String drive() => "Sedang Berjalan";

  int getTire() {
    return 0;
  }
}

// misal class mobil itu kita mau jadikan sebuah interface, kita bisa gunakan kata kunci "Implements"
/*
nah maka secara otomatis, field dan method yg berada di class Mobil harus kita deklarasikan ulang
ke dlm class Avanza, karena class Avanza menjadikan class Mobil itu sebagai interface
*/

// Multiple Implements Interface
// lebih disarankan menggunakan abstract class, jangan class biasa
abstract class Brand {
  // method
  String getBrand();
}

// kita bisa gunakan tanda koma, jika class ny lebih dari satu
class Avanza implements Mobil, Brand {
  // field
  String namaMobil = "Avanza";

  // maka kita harus deklarasikan ulang method yg class ny yg abstract
  String getBrand() {
    return "Toyota";
  }

  // method
  String drive() => "Sedang Berjalan";

  int getTire() {
    return 4;
  }
}

// class Mobil dijadikan sebuah interface oleh class Avanza
// maka semua field dan method yg berada di class Mobil harus di deklarasikan ulang ke dlm class Avanza

void main() {
  // kita buat object class Avanza, karena class avanza menjadikan class mobil dan abstract class brand sebagai interface
  var avanza = Avanza();
  print(
    "Mobil ${avanza.namaMobil}, Roda ${avanza.getTire()}, Merek ${avanza.getBrand()}, ${avanza.drive()}"
  );
}
