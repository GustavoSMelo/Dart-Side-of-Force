import 'package:app12/src/controllers/homecontroller.dart';
import 'package:app12/src/states/homestate.dart';
import 'package:flutter_test/flutter_test.dart';

main () {
  test('the variable todo should to have a lenght > 0', () async {
    var controller = HomeController();

    expect(controller.state, HomeState.start);
    var todos = await controller.start();
    expect(controller.state, HomeState.success);
    expect(todos.isNotEmpty, true);
  });
}
