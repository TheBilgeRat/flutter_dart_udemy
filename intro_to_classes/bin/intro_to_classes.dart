abstract class Animal {
  void breathe();

  void makeNoise() {
    print('Make Animal Noises!');
  }
}

abstract class IsFunny {
  void makePeopleLaugh();
}

class Comedian extends Person implements IsFunny {
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh() {
    print('Comedian makes people laugh!');
  }
}

class TVShow implements IsFunny {
  String name;
  @override
  void makePeopleLaugh() {
    print('TV show making people laugh');
  }
}

class Person implements Animal {
  String name, nationality;

  Person(this.name, this.nationality);

  String showName() => name;

  @override
  String toString() => '$name $nationality';

  @override
  void breathe() {
    print('Person beathes through nose');
  }

  @override
  void makeNoise() {
    print('Person shouting');
  }
}

class Bonnie extends Person {
  String profession;

  Bonnie(String name, String nationality) : super(name, nationality);

  String showProfession() => profession;
}

class Location {
  num lat, lng;

  Location(this.lat, this.lng);
  Location.create(this.lat, this.lng);
}

class ElevatedLocation extends Location {
  num elevation;
  ElevatedLocation(num lat, num lng, this.elevation) : super(lat, lng);

  @override
  String toString() => '$lat $lng $elevation';
}

void main(List<String> arguments) {
  var jenny = Person('Jennie', 'Finnish');
  print(jenny);
}
