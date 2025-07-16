// Access Modifier adalah cara supaya field dan method yg berada di class, tidak bisa di akses dari file tersebut
// hanya bisa di akses di file itu saja
// untuk contoh code access modifier, kita bisa lihat di folder data > product.dart

import 'data/product.dart';

void main() {
  var product = Product();
  product.id = 1;
  product.namaProduk = "Komputer";
  // product._quantity // > ini tidak bisa di akses, karena ini access modifier, hanya bisa di akses di file product.dart
  print(product.id);
  print(product.namaProduk);
}
