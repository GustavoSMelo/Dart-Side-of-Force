import 'package:app12/src/controllers/homecontroller.dart';
import 'package:app12/src/states/homestate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  final controller = HomeController;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var controller = HomeController();

  @override
  void initState () {
    super.initState();
    controller.start();
  }

  Widget _loading () {
    return Center(child: CircularProgressIndicator());
  }

  Widget _success () {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (BuildContext ctx, int index) {

        var todo = controller.todos[index];
        return ListTile(
          leading: Checkbox(onChanged: (value) {}, value: todo.completed,),
          title: Text(todo.title),
          subtitle: Text(todo.userId.toString()),
        );

      }
    );
  }

  Widget _fail () {
    return  Center(
      child: Column(
        children: [
          SizedBox(
            width: 240,
            height: 240,
            child: Image.asset('assets/img/error.png')
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text('ERROR, please, check your internet and reload the application ', style: TextStyle(
              fontSize: 18,
            ),),
          )
        ],
      ),
    );
  }

  stateManagment (HomeState state) {
    if (state == HomeState.loading) {
      return _loading();
    } else if (state == HomeState.success) {
      return _success();
    } else if (state == HomeState.fail) {
      return _fail();
    } else {
      return _loading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
          backgroundColor: Colors.pink[700],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: AnimatedBuilder(animation: controller.state, builder: (ctx, widget) {
            return stateManagment(controller.state.value);
          },)
        )
      )
    );
  }
}
