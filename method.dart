// Method adalah sebuah function, yg dimana klo kita buat function didlm sebuah blok kode class, itu disebut nya Method
// ibarat ny kek kita buat sebuah function biasa gitu, cuman ini beda nya kita buat function ny di class
// dan method juga bisa mengakses field di dalam class tersebut

class ContohMethod {
  String nama = "Muhammad Gustav Ibrahim";

  // Method
  void sayHello(String methodName) {
    // ini disebut nya method
    print(
      "Hallo $methodName Perkenalkan nama saya adalah $nama",
    ); // method bisa juga mengkases field
  }
}

void main() {

  // Cara Memanggil Method
  var contohMethod = ContohMethod();
  contohMethod.sayHello("Teman-Teman ID Network");
}
