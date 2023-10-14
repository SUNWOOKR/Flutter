/*
void sayHellow(String name) {   //void는 이 함수가 아무것도 return하지 않는다는 의미이다.
  print("Hello $name nice to meet you!");
}

#return
String sayHello(String name) {
  //void는 이 함수가 아무것도 return하지 않는다는 의미이다.
  return "Hello $name nice to meet you!";
}
//
위에 프로그램과 아래 프로그램은 같다.
String sayHello(String name) => "Hello $name nice to meet you!";    //=>는 return과 같다.
//
num plus(num a, num b) => a + b;

void main() {
  print(sayHello('nico'));
  print(plus(1, 2));
}

*/

/*
#3.1

String sayHello({   //중괄호 기억하기
  required String name,   //required 중요하다
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main() {
  print(sayHello(
    name: 'sunwoo',
    country: 'korea',
    age: 17,
  ));
}
*/

/*
#3.3
String sayHello(String name, int age, [String? country = 'korea']) =>
    'Hello $name, you are $age, and you come from $country';

void main() {
  print(sayHello('sunwoo', 13));
}
*/

/*
#3.4
?
String capitalizeName(String? name) => name != null
    ? name.toUpperCase()
    : 'ANON'; //name이 null이 아니면 name.toUpperCase();를 출력하고 null이면 ANON을 출력한다.

void main() {
  capitalizeName('sunwoo'); //SUNWOO로 대문자로 바꿔준다.
}

??
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';
//left ?? right라 하면 left가 null이라면 right를 출력하고 null이 아니면 right를 출력

void main() {
  print(capitalizeName('sunwoo')); //SUNWOO로 대문자로 바꿔준다.
}

??=
void main() {
  String? name;
  name ??= 'nico';  //name이 null이면 nico를 할당해라
  name = null;
  name ??= 'another';
  print(name);
}
*/

/*
#3.5
List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  return reversed.toList();
}
==
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;   //list를 거꾸로 뒤집는다.
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));
}

*/

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {}
