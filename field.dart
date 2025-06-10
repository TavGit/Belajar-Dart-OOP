// Field atau properties, ini ibarat ny kita buat variable di dalam sebuah block class gitu
// Manipulasi atau Mengubah Field adalah cara kita ngubah data di field, cuman klo make kata kunci final dan const, itu kita gk bisa ubah
// ibarat ny kek kita ngubah value dari sebuah variable biasa lah gitu, kl make kata kunci final atau const,
// ya berarti value dari sebuah variable kg bisa diubah
// nah tpi beda nya ini disebut ny ngubah data di field

class Orang {
  // ini adalah field, didalam block class
  String nama = 'Gustav'; // ini tetap variable
  String? alamat;
  final String negara = 'Indonesia';

  // cuman yg membedakan ini,
  // ketiga properties/variable string ini, klo didlm block class, disebut nya dengan field
  // klo di luar class, ketiga properties/variable string ini, di sebut nya variable biasa
}

void main() {
  var contohField = Orang();
  print(contohField.nama);
  print(contohField.alamat);
  print(contohField.negara);

  // Manipulasi/Mengubah data di field
  var manipulasiField = Orang();
  manipulasiField.nama = "Gathan";
  manipulasiField.alamat = "Bekasi";
  // manipulasiField.negara = "Jerman"; ini gk bisa kita ubah data dari field nya, karena menggunakan kata kunci final

  print(manipulasiField.nama); // ini setelah diubah data field nya
  print(manipulasiField.alamat); // ini setelah diubah data field nya
  print(manipulasiField.negara); 

  Orang orang1 = Orang();
  print(orang1);
}
