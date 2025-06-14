// is = buat ngecek apakah value dari sebuah parameter itu sesuai dengan object yg kita tentukan
// as = buat meyakinkan dart bahwa value dari sebuah parameter itu  sudah pasti object itu


// Class paling dasar: Kendaraan
class Kendaraan {
  String? name;

  // Constructor Kendaraan terima nama kendaraan
  Kendaraan(this.name);
}

// Mobil adalah turunan dari Kendaraan
class Mobil extends Kendaraan {
  // Constructor Mobil lempar nilai ke constructor Kendaraan pakai `super`
  Mobil(String namaMobil) : super(namaMobil);
}

// MobilBalap adalah turunan dari Mobil (dan otomatis juga turunan dari Kendaraan)
class MobilBalap extends Mobil {
  // Sama, constructor-nya lempar ke constructor Mobil
  MobilBalap(String namaMobilBalap) : super(namaMobilBalap);
}

// Function ini menerima parameter bertipe Kendaraan
// Artinya: bisa nerima object dari Kendaraan, Mobil, MobilBalap
void cekMobil(Kendaraan kendaraan) {
  // Type test pakai operator `is`
  // Mengecek apakah object ini dari tipe tertentu (atau turunan dari tipe itu)
  print("Apakah kendaraan ini MobilBalap? => ${kendaraan is MobilBalap}");
  print("Apakah kendaraan ini Mobil? => ${kendaraan is Mobil}");
  print("Apakah kendaraan ini Kendaraan? => ${kendaraan is Kendaraan}");

  // Jika kendaraan benar-benar object MobilBalap (atau turunan MobilBalap)
  if (kendaraan is MobilBalap) {
    // Type cast pakai `as` untuk mengubah kendaraan ke tipe MobilBalap
    // Supaya kita bisa akses properti/metode khusus MobilBalap (kalau ada)
    MobilBalap mobilBalap = kendaraan as MobilBalap;

    // Output info nama mobil
    print("✅ Ini MobilBalap bernama ${mobilBalap.name}");
  } else {
    // Jika bukan MobilBalap
    print("❌ Ini BUKAN MobilBalap");
  }
}

void main() {
  // Uji coba function cekMobil dengan berbagai object
  // Uncomment satu-satu buat lihat perbedaan hasilnya

  // Kasus ini: kita kirim object Mobil (bukan MobilBalap)
  cekMobil(Mobil("Avanza"));

  // Kasus ini: kita kirim object Kendaraan biasa
  // cekMobil(Kendaraan("Sepeda"));

  // Kasus ini: kita kirim object MobilBalap
  // cekMobil(MobilBalap("Lamborghini"));
}
