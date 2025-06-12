// Field Overriding pada Inheritance adalah cara untuk mendeklarasikan ulang field yg berada di class parent
// tapi nama field ny harus sama persis

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print("Halo $name, nama saya ${this.name}");
  }
}

class OtherPerson extends Person {
  // field overriding
  String name = "Other Person";
}

void main() {
  var person = Person();
  person.sayHello('Gustav');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('Ibrahim');
}
