// Abstract Class adalah class yg tidak bisa dijadikan object, hanya bisa dijadikan class parent saja
// yg bisa dijadikan object hanyalah turunan nya atau class child ny saja.

abstract class Location {
  String? name;
  String? alamat;

  Location(this.name, this.alamat);
}

class City extends Location {
  City(String name, String alamat) : super(name, alamat);
}

void main() {
  // class yg bersifat abstract tidak bisa dijadikan object, hanya bisa dijadikan class parent
  // var location = Location(); // error

  var city = City("Muhamad Gustav Ibrahim", "Kabupaten Bekasi");
  print(city.name);
  print(city.alamat);
}
