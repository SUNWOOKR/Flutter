/*
#4.5
class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red');
  var potato = nico
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue' //.. == NICO.
    ..sayHello();
}

#4.6
enum Team { red, blue }

enum XpLevel { beginner, medium, pro }

class Player {
  String name;
  XpLevel xp; //중요 int 대신 enum을 쓴다.
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: XpLevel.medium, team: Team.red);
  var potato = nico
    ..name = 'las'
    ..xp = XpLevel.pro
    ..team = Team.blue //.. == NICO.
    ..sayHello();
}

$4.7
abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XpLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XpLevel xp; //중요 int 대신 enum을 쓴다.
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print('im walking');
  }

  void sayHello() {
    print("my name is $name");
  }
}

class Coaach extends Human {
  void walk() {
    print('the coach is walking');
  }
}

void main() {
  var nico = Player(name: 'nico', xp: XpLevel.medium, team: Team.red);
  var potato = nico
    ..name = 'las'
    ..xp = XpLevel.pro
    ..team = Team.blue //.. == NICO.
    ..sayHello();
}

#4.8

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); //super은 부모클래스와 상호작용하게 한다.

  @override //Human에서 온 sayHello를 여기서 만든 sayHello로 대체한다.
  void sayHello() {
    super.sayHello();
    print('and I play for ${team.name}');
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
  player.sayHello();
}

#4.9
*/

class Strong {
  //Mixin의 조건은 생성자가 없는 클래스여야 한다는것!!!!!!
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print('runnnnn');
  }
}

class Tall {
  final double hetght = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  }); //super은 부모클래스와 상호작용하게 한다.
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(
    team: Team.red,
  );
  player.runQuick();
}
