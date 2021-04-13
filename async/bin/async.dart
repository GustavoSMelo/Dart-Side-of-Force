void main() {

  var future = Future.delayed(Duration(seconds: 5));
  future.then((value) => print('applications over '));

  for (var i = 0; i < 3; i++) {
    print(i);
  }
}
