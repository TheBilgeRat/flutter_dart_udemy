class Microphone {
  String name;
  String color;
  int model;

  Microphone(this.name, this.color, this.model);

  Microphone.initialize() {
    name = 'Blue Yeti';
    model = 9823;
  }

  String turnOn() => '$name is on!';
  String turnOff() => '$name is off!';
}

class Person {
  String name, lastName, nationality;
  int age;

  String showName() => name;
}

class Bonnie extends Person {
  String profession;

  String showProfession() => profession;
}

void main(List<String> arguments) {
  var bonnie = Bonnie();
  bonnie.name = 'Bonnie';
  bonnie.age = 43;
  bonnie.profession = 'Programmer';
  print(bonnie.showProfession());
  print(bonnie.showName());
}
