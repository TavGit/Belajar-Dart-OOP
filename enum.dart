// Enum merupakan fitur untuk membuat tipe data yg sudah jelas nilai nya
// untuk membuat enum, kita bisa gunakan kata kunci "enum"
// ibarat ny kaya kita membuat tipe data sendiri, nah value/nilai ny itu udh jelas kita yg tentukan

enum CustomerLevel { reguler, premium, vip }

class Customer {
  String? name;
  CustomerLevel level;

  Customer(this.name, this.level);
}

// cara menggunakan enum di object
void main() {
  var customer = Customer("Gustav", CustomerLevel.vip);
  // untuk memanggil enum
  print("${customer.name}, adalah ${customer.level}");

  // nah untuk mengambil semua data yg berada di enum CustomerLevel
  // kita bisa gunakan values
  print(CustomerLevel.values);
}
