import 'dart:convert';

import 'package:http/http.dart' as http;

import 'todoclass.dart';

Future main () async {
  var todo = await fetch();
  print(todo.title);
}

Future<Todo> fetch () async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';

  var response = await http.get(Uri.parse(url));
  var json = jsonDecode(response.body);
  var todo = Todo(json['title'], json['id'], json['userId'], json['completed']);
  return todo;
}
