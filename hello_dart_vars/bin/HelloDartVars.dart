var myOutsideVar = "Outside var";

void main(List<String> arguments) {
  print(sayHello('Fuuucker'));
  print(myOutsideVar);
}

void doAThing() {
  print('I did a thing!');
}

String returnName() {
  return 'Boo';
}

String passName() => 'Dirk Diggler';

int showAge() => 34;

String sayHello(String name, [String lastName, int age]) => 'Hello $name!';
