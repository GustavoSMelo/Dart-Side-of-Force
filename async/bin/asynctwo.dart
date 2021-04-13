void main () {
  asyncMethod();
  print('usuario: gustavo');
}

Future<void> asyncMethod () async {
  await Future.delayed(Duration(seconds: 3));
  print('estava sendo processado ');
}
