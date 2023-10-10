void main() {
  var numbers = {1, 2, 3, 4}; //var을 Set<int>로도 쓸 수 있다.
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  print(numbers);

  //List는 []를 사용하며 숫자가 같아도 추가가 된다
  //Set은 {}를 사용하며 숫자가 중복되면 추가되지 않는다.
  /*
  #2.5
  */

  /*
  #2.4
  List<Map<String, Object>> player = [
    {'name': 'nico', 'xp': 199.19}, //Map
    {'name': 'nico', 'xp': 199.19},
  ]; //List

  /*
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower':false,
  };

  //Map
  Map<int, bool> player = {
    //List<int>, bool로 바뀌면 [1,2,3]: true의 형태가 되야함
    1: true,
    2: false,
    3: true
  };
  */
  */

  /*
  #2.3
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "++ $friend",
  ];
  print(newFriends);
  */

  /*
  #2.2
   var name = 'sunwoo';
  var age = 10;
  var greeting =
      'Hello everyone, my name is $name and I\'m ${age + 2} years old';
  //$뒤에 변수를 적어주면 된다. 뭔가를 계산하고 싶으면 ${} 중괄호 안에 적으면 된다.
  print(greeting);
  */

  /*
  #2.1
  var giveMeFive = true;
  var numbers = [1, 2, 3, 4, if (giveMeFive) 5]; //var대신에 List<int>로 쓸 수도 있다.
  //if (giveMeFive) 5는 giveMeFive가 true라면 5를 추가한다는것을 뜻함
  print(numbers);
  //numbers.add(1); //숫자를 추가한다.
  //numbers.first; //list의 첫번째 요소를 가져다준다.
  //numbers.last; //List의 마지막번째 요소를 가져다준다.
  */

  /*
  #2.0
  String name = 'nico';
  bool alive = true;
  int age = 12;
  double money = 69.88;
  num x = 12; //num은 double이나 int등의 자료형의 부모 클래스이다.
  x = 1.1;
  */
}
