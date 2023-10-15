/*
#4.0
class Player {
  final String name = 'nico';
  int xp = 1500;

  void sayHello() {
    print("my name is $this.name");
    //print("my name is $name");
    //var의 이름들이 겹치면 this.name으로 쓰고 안 겹치면 그냥 name으로 써도 된다.
  }
}

void main() {
  var player = Player();
  print(player.name);
  player.sayHello();
}
#4.1
class Player {
  late final String name;
  late int xp;

  Player(String name, int xp) {
    //constructors함수는 class와 이름이 같아야함
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var player = Player("nico", 1500);
  player.sayHello();
  var player2 = Player("sunwoo", 3000);
  player2.sayHello();

  ==간략화==

  class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);
  //타입을 위에 이미 정해줬가 떄문에 this만 붙여도 가능하다.

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var player = Player("nico", 1500);
  player.sayHello();
  var player2 = Player("sunwoo", 3000);
  player2.sayHello();
}
}
#4.2
class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});
  //타입을 위에 이미 정해줬가 떄문에 this만 붙여도 가능하다.

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var player = Player(
    name: 'nico',
    xp: 1200,
    team: 'red',
    age: 12,
  );
  player.sayHello();
  var player2 = Player(
    name: 'sunwoo',
    xp: 3000,
    team: 'red',
    age: 12,
  );
  player2.sayHello();
}
*/

// class Player {
//   final String? name, team;
//   int? xp, age;

//   Player({this.name, this.xp, this.team, this.age});
//   //타입을 위에 이미 정해줬가 떄문에 this만 붙여도 가능하다.

//   void sayHello() {
//     print("my name is $name");
//   }
// }

// void main() {
//   var player = Player(
//     name: 'nico',
//     xp: 1200,
//     team: 'red',
//     age: 12,
//   );
//   player.sayHello();
//   var player2 = Player(
//     name: 'sunwoo',
//     xp: 3000,
//     team: 'red',
//     age: 12,
//   );
//   player2.sayHello();
// }

/*
#4.3
class Player {
  final String name;
  int xp, age;
  String team;

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});
  //타입을 위에 이미 정해줬가 떄문에 this만 붙이고 타입을 안 붙여도 가능하다.

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        //:는 위에 있는 final String name,int xp,int age,Stromg name의 값을 초기화해준다.
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: 'nico',
    age: 12,
  );
  var redPlayer = Player.createRedPlayer('nico', 12);
}
*/

class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("my name is $name");
  }
}

void main() {
  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
