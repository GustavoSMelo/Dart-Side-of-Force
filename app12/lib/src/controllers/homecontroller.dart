import 'package:app12/src/model/todomodel.dart';
import 'package:app12/src/repositories/todorepositories.dart';
import 'package:app12/src/states/homestate.dart';
import 'package:flutter/material.dart';

class HomeController {

  List<TodoModel> todos;
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future<List<TodoModel>> start () async {

    try {
      state.value = HomeState.loading;
      this.todos = await TodoRepository().fetch();
      state.value = HomeState.success;
      return this.todos; 
    } catch (err) {
      state.value = HomeState.fail;
      return this.todos;
    }
  } 
  
}
