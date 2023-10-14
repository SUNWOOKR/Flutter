void main() {
  //late var or late final or late String등을 써야한다.
  //const name = 'nico';  //const도 fianl과 같다
  //const는 앱을 컴파일하고 앱스토어에 올릴 때 그 값을 알고 있다면 const사용

  /*
  late final String name; //late는 변수를 나중에 할당할 수 있게 해준다.
  //API로 테이터를 받아 변수에 넣어준다
  name = 'nico';
  print(name);
  */

  /*
  dynamic name;
  //name = 'nico';
  //name = 12;
  //name = true;
  if (name is String){
    name.블라
  }
  */

  /*
  String? sunwoo = 'nico'; //?를 넣으면 null일 수도 있고 아닐 수도 있다는걸 알려준다.
  sunwoo = null;
  if (sunwoo != null) {
    sunwoo.isNotEmpty;
  }
  */

  //nico?.isNotEmpty로 위에껄 줄일 수 있다.

  //final String name = 'nico'; //final은 변수를 한 번 할당한 후에 변경할 수 없다
}
