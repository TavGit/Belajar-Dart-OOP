// Mixin adalah cara mengcopy paste code yg sama dari class yg berbeda
// jadi misal ktia ingin menggunakan code yg sama, nah dari pada kita copy paste code ny satu", lebih baik kita gunakan Mixin
// untuk menggunakan mixin, kita bisa gunakan kata kunci "mixin"
// untuk menggunakan mixin ke dlm class lain, kita bisa gunakan kata kunci "with"
// dan mixin bisa lebih dari satu class, dengan tanda pemisah koma (,)
// nah untuk membuat mixin. kita tidak perlu menggunakan kata kunci "class"

// Membatasi Mixin
// namun jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci "on"
// diikuti dengan class yg ingin  kita batasi mixin nya
// inti nya, jika kita ingin membatasi mixin pada class turunan tertentu, kita bisa tambahkan kata kunci "on"

// kita buat abstract class parent
abstract class Gamers {}

// kita kasih kata kunci "on"
// yg arti nya mixin playgame dan stopgame hanya bisa digunakan oleh turunan dari class Gamers saja,
// tidak bisa dari turunan atau class yg lain
mixin PlayGame on Gamers {
  String? nameGame;

  void Play() {
    print("Play Game $nameGame");
  }
}

mixin StopGame on Gamers {
  String? nameGame;

  void Stop() {
    print("Stop Game $nameGame");
  }
}

// misal kita ingin mengcopy paste code yg berada di playgame dan stopgame
// nah kita bisa gunakan cara mixin, nah untuk menggunakan mixin ke class lain
// kita bisa gunakan kata kunci "with", setelah nama class ny, dan sebelum nama mixin nya

// nah kedua class ini tidak bisa menggunakan mixin playgame dan stopgame
// karena mereka bukan turunan dari class Gamers
// nah supaya bisa menggunakan mixin, kita perlu menambahkan extends
class VideoGame extends Gamers
    with
        PlayGame,
        StopGame {} // > sangat simple, kita tidak perlu mengcopy paste satu" code nya

class AudioGame extends Gamers
    with
        PlayGame,
        StopGame {} // > sangat simple, kita tidak perlu mengcopy paste satu" code nya

void main() {
  var videogame = VideoGame();
  videogame.nameGame = "Mobile Legends";
  videogame.Play();
  videogame.Stop();
}
