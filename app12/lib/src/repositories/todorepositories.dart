import 'package:app12/src/model/todomodel.dart';
import 'package:dio/dio.dart';

class TodoRepository {

  Dio dio = Dio();
  String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<TodoModel>> fetch () async  {
    var response = await dio.get(url);
    var list = response.data as List;

    List<TodoModel> listTodos = [];

    for (var item in list) {
      var todo = TodoModel.fromJson(item); 
      listTodos.add(todo);
    }

    return listTodos;
  }

}
