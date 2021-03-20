import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber[900], title: Text('List View', textDirection: TextDirection.ltr,)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50),
            Container(width: 50, height: 50, color: Colors.amber[900]),Container(width: 50, height: 50),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50),
            Container(width: 50, height: 50, color: Colors.amber[900]),Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),Container(width: 50, height: 50, ),
            Container(width: 50, height: 50, color: Colors.amber[900]),Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
            Container(width: 50, height: 50,),
            Container(width: 50, height: 50, color: Colors.amber[900]),
          ],
        ),
      ),
    );
  }
}
