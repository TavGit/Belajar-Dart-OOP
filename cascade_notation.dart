// Cascade Notation adalah cara membuat object yg bisa nullable ataupun yg tidak nullable
// .. digunakan untuk tidak nullable
// ?.. digunakan untuk yg bisa nullable

class User {
  // field
  String? username;
  String? name;
  String? email;

  // method
  static User? createUser() {
    return null;
  }
}

void main() {
  // Tanpa menggunakan Cascade Notation
  // var user = User();
  // user.username = "Tav";
  // user.name = "Gustav";
  // user.email = "gustav@email.com";

  // print(user.username);
  // print(user.name);
  // print(user.email);

  // Menggunakan Cascade Notation
  var user =
      User()
        ..username = "Tav"
        ..name = "Gustav"
        ..email = "gustav@email.com";

  print(user.username);
  print(user.name);
  print(user.email);

  // Nullable menggunakan Cascade Notation
  User? user2 = User.createUser();
  user2 // panggil object nya
    ?..username = "gatot"
    ..name = "gathan"
    ..email = "gathan@email.com";

  print(user2?.username);
  print(user2?.name);
  print(user2?.email);
}
