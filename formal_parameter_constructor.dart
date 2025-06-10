// kita bisa gunakan formal parameter, dimana para parameter kita bisa langsung sebutkan field mana yg akan diubah
// formal parameter hanya bisa digunakan di constructor, tidak bisa di method
// cara nya, kita bisa gunakan seperti ini "this.namaField" tanpa perlu menggunakan jenis tipe data ny lagi


// Contoh:
class DataDiri {
  // ini field
  String nama = "Gustav";
  String alamat = "Lampung";

  // ini constructor
  DataDiri(this.nama, this.alamat) {
    // body/tanda kurung kurawal ini opsional di constructor boleh kita hapus atau kita biarkan seperti ini juga gppa
  }
}

void main() {
  var objectDataDiri = DataDiri("Muhammad", "Bekasi");
  print(objectDataDiri.nama);
  print(objectDataDiri.alamat);
}
