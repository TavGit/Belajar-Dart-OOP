/*
 No Such Method merupakan sebuah method yg terdapat di class Object,
 yg bisa kita override untuk mendeteksi atau bereaksi ketika sebuah method yg tidak ada di panggil
 
 No Such Method hanya bisa digunakan ketike tipe object ny dynamic atau sebuah abstract class
*/

import 'dart:mirrors';

// NoSuch Method Abstract Class
// jadi kita bisa membatasi siapa saja yg bisa menggunakan nosuch method
abstract class CategoryRepository {
  // kita deklarasikan 3 method
  // maka nanti pada saat kita panggil di object, hanya bisa 3 method ini saja
  // method yg lain, yg tidak ada di abstract class ini tidak akan bisa.
  void id(int id);
  void name(String name);
  void quantity(int quantity);
}

class Repository extends CategoryRepository {
  // field
  final String _name; // knp make final?, karena nanti kita ingin menambah field

  // default Constructor
  Repository(this._name);

  @override
  // no such method
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select from $_name where $column = '$value'";
    print(sql);
  }
}

// menggunakan nosuch method
void main() {
  // untuk object nya, kita harus/wajib menggunakan tipe data dynamic, jika tidak maka akan terjadi error
  // klo sudah menggunakan abstract class, kita tidak perlu lgi menggunakan tipe data dynamic
  // kita bisa gunakan tipe data class parent nya, yaitu CategoryRepository
  CategoryRepository repository = Repository("product");
  // nah skrng ketiga method ini akan terdaftar di abstract class.
  // karena kita sudah mengdeklarasikan nya
  repository.id(1);
  repository.name("Laptop");
  repository.quantity(1000);
  // nah klo kita misal buat method satu lg, yg tidak terdaftar di abstract class nya, maka akan terjadi error, atau tidak bisa
  // repository.brand("asus"); > ini akan terjadi error
}
