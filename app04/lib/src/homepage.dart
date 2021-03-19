
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Scaffold', textDirection: TextDirection.ltr,),
          titleTextStyle: TextStyle(color: Colors.black,),
        ),
      floatingActionButton: FloatingActionButton(onPressed: () { }, child: Icon(Icons.add),),
      body: Center(child: Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.black
          )
        ),
      ))
    );
  }
}
