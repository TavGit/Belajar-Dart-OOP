// Exception adalah cara untuk membuat sebuah pemberitahuan Error
// kita bisa membuat exception sendiri atau menggunakan exception yg sudah disediakan oleh Dart
// untuk membuat exception sendiri, kita bisa gunakan kata kunci "throw", lalu diikuti dengan object exception nya
// contoh exception bawaan Dart
// throw Exception();

// Membuat class exception sendiri
// implements Exception > menandakan bahwa kita mengimplementasi kan class Exception sebagai implements (implements adalah interface)
// class Exception adalah class yg sudah disediakan oleh Dart
class ValidationException implements Exception {
  String? pesan;
  ValidationException(this.pesan);
}

// Menggunakan exception yg sudah disediakan oleh Dart
class Validation {
  static void validate(String username, String password) {
    if (username == "") {
      throw ValidationException("Username tidak boleh kosong");
      // throw Exception(
      //   "Username tidak boleh kosong",
      // ); // > ini exception bawaan nya Dart
    } else if (password == "") {
      throw ValidationException("Password tidak boleh kosong");
      // throw Exception(
      //   "Password tidak boleh kosong",
      // ); // > ini exception bawaan nya Dart
    }
  }
}

// cara memanggil exception nya
void main() {
  Validation.validate("user", "");
}
