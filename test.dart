import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int test = 40;
  dynamic lul = "beb";
  print(lul);
  const int co = 5;
  lul = 5 * co;
  print(lul);
  bool tester = false;
  print(tester);
  print(Greeting("lobe"));
  List<String> name = ['dfds', "fdsfsdf", "sdfdsf"];
  name.add('dfdsfds');
  print(name);
  for (String n in name) {
    print(n);
  }
  Person p = Person("be", "dsffds", 10);
  Person p2 = SuperPerson("dsfdsf");
  print(p.fullName());
  print(p2.fullName());
  p2.add("mog", "0475985247");
  p2.add("mfo", "0475985247");
  p2.add("mor", "0475985247");

  p2.mobiles.forEach((key, value) {
    print("$key $value");
  });
  try {
    String? inp = stdin.readLineSync();
    print(inp);
    int a = int.parse(inp ?? '0');
    print(sqrt(a));
  } catch (e) {
    print("error");
  }
  switch (p2.statusPerson) {
    case Status.GO:
      print("is een go");
      break;
      case Status.NOGO:
      print("is een nogo");
      break;
    default:
  }
}

enum Status {
  GO,
  NOGO
}
//methode
String Greeting(String lov) => "hello$lov";

class Person {
  String? forName;
  String? name;
  int? age;
  Map<String, String> mobiles = Map();
  Status statusPerson=Status.GO;


  Person(var name, var forName, var age) {
    this.name = name;
    this.age = age;
    this.forName = forName;
  }

  void add(String type, String nr) {
    mobiles[type] = nr;
  }
  void changeStatus(){
    if(statusPerson==Status.GO){
      statusPerson=Status.NOGO;
    }
    else{
      statusPerson=Status.GO;
    }
  }

  void remove(String key) {
    mobiles.remove(key);
  }

  String fullName() => "$forName $name ${Greeting("tst")}";

  @override
  String toString() => 'Person(forName: $forName, name: $name, age: $age)';
}

class SuperPerson extends Person {
  String adress = "";

  SuperPerson(String adress) : super("dsfds", "sdfdsf", 20) {
    this.adress = adress;
  }

  @override
  String fullName() {
    return "Super -->$forName $name ${Greeting("tst")} $adress";
  }

  @override
  String toString() {
    return 'SuperPerson{adress: $adress}';
  }
}
