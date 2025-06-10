// pada saat kita membuat constructor atau named constructor kita juga bisa menggunakan fitur initializer list
// initializer list merupakan tempat yg dimana kita bisa mengubah field pada object, sebelum block body constructor
// hal ini lebih mudah, dibandingkan kita mengubah field pada object di dl body block csontructor
// untuk menggunakan initializer list, kita cukup gunakan tanda titik dua :, setelah kita membuat constructor,
// dan tidak perlu menggunakan body/tanda kurung kurawal

// Contoh

class Pelanggan {
  // Field
  String firstName = "";
  String middleName = "";
  String lastName = "";
  String fullName = "";

  // Constructor
  Pelanggan(this.fullName)
    : firstName = fullName.split(" ")[0], // Initializer List
      middleName = fullName.split(" ")[1], // Initializer List
      lastName = fullName.split(" ")[2]; // Initializer List
}

// (this.fullName) > supaya tidak terjadi variable shadowing
// firstName, middleName, lastName > ini kita panggil variable field nya, yg ingin diubah
// fullName > ini di sesuaikan dengan parameter di constructor nya
// .split(" ") > ini tanda kita ingin menampilkan output yg secara eksplisit/dipisah, menggunakan tanda petik yg menggunakan spasi
// [0], [1], [2] > ini berdasarkan index

void main() {
  var pelanggan = Pelanggan("Muhammad Gustav Ibrahim");
  print(pelanggan.firstName); // Muhammad > index ke 0
  print(pelanggan.middleName); // Gustav > index ke 1
  print(pelanggan.lastName); // Ibrahim > index ke 2
  print(pelanggan.fullName); // ini secara full name
}
