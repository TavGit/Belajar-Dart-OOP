// Getter dan Setter adalah cara untuk mengambil/mengakses dan mengubah data field atau method yg accesss modifier

class Kotak {
  // field yg access modifier
  // nah field ini tidak bisa di akses dari luar file
  int _width = 0;
  int _height = 0;

  // nah supaya bisa di ambil/diakses kita bisa gunakan Getter
  // gunakan kata kunci "get", dan tidak perlu tanda kurung(), jadi langsung tanda kurung kurawal{}.
  // getter tidak perlu parameter, tpi bisa menggunakan return value
  int get width {
    return _width;
  }

  // nah supaya bisa di ubah dari luar file. kita bisa gunakan Setter
  // gunakan kata kunci "set", bisa meggunakan parameter dan return value

  set width(int value) {
    _width = value;
  }

  // untuk mempersingkat cara getter dan setter kita bisa gunakan Expression Body
  // jadi hanya satu baris code saja, bisa kita gunakan tanda =>
  // bahkan untuk return value pun, kita tidak perlu kata kunci return, sama kaya function short expression

  // Getter & Setter Expression Body
  int get height => _height; // Getter Expression Body
  set height(int value) => _height = value; // Setter Expression Body
}
