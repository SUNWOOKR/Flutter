void main() {
  String? sunwoo = 'nico'; //?를 넣으면 null일 수도 있고 아닐 수도 있다는걸 알려준다.
  sunwoo = null;
  if (sunwoo != null) {
    sunwoo.isNotEmpty;
  }
  //nico?.isNotEmpty로 위에껄 줄일 수 있다.
}
