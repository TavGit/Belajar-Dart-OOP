// INI HANYA CONTOH FILE SAJA
// FILE INI AKAN DI IMPORT KE DALAM FILE import.dart

class Category {
  int? id;
  String? name;

  Category(this.id, this.name);

  @override
  // untuk tipe data object itu memang class object
  // karena kita menggunakan operator == milik si class object, jdi tipe data ny ya harus Object
  bool operator ==(Object product) {
    if (product is Category) {
      if (id != product.id) {
        return false;
      } else if (name != product.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  // kita bahas code yg ini
  // if (id != product.id) {
  //   return false;
  // } else if (name != product.name) {
  //   return false;
  // } else {
  //   return true;
  // }
  // jika product itu dari Category maka true, jika bukan false
  // nah jika id bukan dari product field ny id dari Category maka hasil ny false
  // nah jika name bukan dari product field ny name dari Category maka hasil ny false
  // jika memang kedua nya dari product, maka hasil ny true
  
}
