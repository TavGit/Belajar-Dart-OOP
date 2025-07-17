// Try Catch adalah cara supaya progam tidak berhenti jika terjadi exception/error
// btw code ini adalah code yg sama dengan code yg berada di file exception.dart
// nah bagaimana misal kita memanggil method, yg ternyata error/exception nya itu bisa berbagai jenis atau multiple error
// nah kita bisa gunakan cara Multiple Try Catch
// nah kita ingin tahu, error/exception ny itu dibaris code mana dan berapa?
// kita bisa gunakan Stack Trace, untuk mengetahui exception ny berada di baris code berapa

class ValidationException implements Exception {
  String? pesan;
  ValidationException(this.pesan);
}

class Validation {
  static void validate(String username, String password) {
    if (username == "" || password == "") {
      throw ValidationException("Username dan Password tidak boleh kosong");
    } // Multiple Try Catch
    else if (username != "gustav" || password != "gustav123") {
      throw Exception("Login Gagal");
    } else {
      print("Login Berhasil");
    }
  }
}

// cara memanggil exception nya
void main() {
  // kita buat try dan on, blm menggunakan block catch
  // try {
  //   Validation.validate("gustav", "");
  // } on ValidationException {
  //   print("Validation Error"); // > ini pesan error nya
  // }
  // Alur nya :
  // try akan mencoba melakukan eksekusi code dari class Validation dengan method validate
  // jika terjadi error/exception, maka akan masuk ke block on
  // nah di block on, kita ingin melakukan apa?
  // setelah masuk ke block on
  // kita ingin menampilkan pesan error, dari class ValidationException

  // kita buat try,on dan catch
  try {
    Validation.validate('gustav', 'gustav123');
  } on ValidationException catch (exception, stackTrace) { // parameter stackTrace untuk mengetahui exception ny berada di baris code mana
    // > (exception) adalah variable, untuk nama variable ny bebas, tidak harus exception
    print("Error: ${exception.pesan}");
    print("Stack Trace: ${stackTrace.toString()}");
  } // Multiple Try Catch
  on Exception catch (error, stackTrace) { // parameter stackTrace untuk mengetahui exception ny berada di baris code mana
    // jika terjadi error yg berbagai jenis
    print("Error: ${error.toString()}");
    print("Stack Trace: ${stackTrace.toString()}"); 
  } finally {
    // block yg akan selalu dieksekusi entah itu exception ataupun tidak
    print("Program Selesai");
  }
  // Alur nya :
  // try akan mencoba melakukan eksekusi code dari class Validation dengan method validate
  // jika terjadi error/exception, maka akan masuk ke block on dan catch
  // nah di block on dan catch, kita ingin melakukan apa?
  // kita ingin menampilkan pesan error dan menangani/menangkap object exception/error
  // dengan cara on ValidationException > buat mengimplementasikan class yg implements exception
  // catch (exception) > untuk menangani/menangkap object exceptionn/error lewat variable "exception"
  // yg akan menampilkan pesan error.
  // nah jika terjadi error/exception yg berbagai jenis, kita bisa gunakan cara Multiple Try Catch
  // nah ada satu block, yg akan selalu tereksekusi entah itu jika terjadi exception/error atau pun tidak
  // yaitu block finally
  // nah kita ingin tahu, exception/error ny dibaris code mana dan berapa?
  // kita bisa gunakan Stack Trace
}
