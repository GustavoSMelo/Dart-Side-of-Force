import 'package:app12/src/repositories/todorepositories.dart';
import 'package:flutter_test/flutter_test.dart';

main () {

  final repository = TodoRepository();
  
  test('it should have return a todo list', () async {

    var list = await repository.fetch();
    expect(list[1].title, 'quis ut nam facilis et officia qui');

  });
}
