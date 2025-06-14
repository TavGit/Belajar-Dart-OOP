// Kata Kunci Super adalah kata kunci yg digunakan untuk mengakses method atau field yg berada di class parent,
// jika sudah terlanjur di override


class Kotak {

  // ini field parent
  String name = "Pukimak";

  // ini method parent
  int ambilKotak() {
    return 0;
  }
}

class Bulat extends Kotak {
  // ini field child
  @override
  String name = "Acumalaka";

  // ini method child
  @override
  int ambilKotak() {
    return 10;
  }

  // buat method baru yg akan mengakses method yg berada di class parent
  int parentKotak() {
    return super.ambilKotak(); // > mengakses method yg barada di class parent
  }

  // buat method baru yg akan mengakses field yg berada di class parent
  String parentField() { 
    return super.name; // > mengakses field yg berada di class parent
  }
}

void main() {
  // buat object nya
  var bulat = Bulat();
  // mengakses method child
  print("Method yg berada di class child = ${bulat.ambilKotak()}"); 

  // mengakses method dan field yg berada di class parent
  print("Method yg berada di class parent = ${bulat.parentKotak()}");
  print("Field yg berada di class parent = ${bulat.parentField()}");
}
