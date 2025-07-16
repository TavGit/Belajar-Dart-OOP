class Product {
  int? id;
  String? namaProduk;
  // access modifier
  int?
  _quantity; // > ini arti nya field quantity tidak bisa di aksess dari luar file product.dart,
}

void main() {
  var product = Product();
  product.id = 1;
  product.namaProduk = "Komputer";
  product._quantity =
      100; // > nah ini baru bisa di akses, karena di dlm file product.dart/file itu saja
  print(product.id);
  print(product.namaProduk);
  print(product._quantity);
}
