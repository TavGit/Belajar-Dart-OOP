class Kotak {

  String name = "Pukimak";
  int ambilKotak() {
    return 0;
  }
}

class Bulat extends Kotak {

  String name = "Acumalaka";
  int ambilKotak() {
    return 10;
  }
  int parentKotak() {
    return super.ambilKotak(); 
  }
  String parentField() { 
    return super.name; 
  }
}

void main() {
  var bulat = Bulat();
  print("Method yg berada di class child = ${bulat.ambilKotak()}"); 
  print("Method yg berada di class parent = ${bulat.parentKotak()}");
  print("Field yg berada di class parent = ${bulat.parentField()}");
}
