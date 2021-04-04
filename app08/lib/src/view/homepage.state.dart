import 'package:app08/src/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageState extends StatelessWidget {
  Widget build (BuildContext ctx) {
    return Scaffold(
      appBar: 
        AppBar(title: Text('Home Page', textDirection: TextDirection.ltr,), backgroundColor:  Colors.deepPurple,),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Text('Hello admin', textDirection: TextDirection.ltr,),
      ),
    );
  }
}
