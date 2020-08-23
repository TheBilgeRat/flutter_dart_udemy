class Person {
  String name;

  Person(this.name);
}

void main(List<String> arguments) {
  var winners = {'first': 'Bill', 'second': 'George', 'third': 'Bond'};
  var winScnd = {1: 'Apollo', 2: 'Something', 3: 'Another'};
  winScnd.forEach((key, value) => print('key: $key, val: $value'));
}
