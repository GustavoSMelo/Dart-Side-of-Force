import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  Widget _body () {
    return (
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login Form', textDirection: TextDirection.ltr, style: TextStyle(
              fontSize: 32,
            ),),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                fillColor: Colors.indigo
              )
            )
          ],
        )
      )
    );
  }

  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Stack', textDirection: TextDirection.ltr),
          backgroundColor: Colors.deepPurple[300],
        ),
        body: Stack(children: [
          Container(
            width: MediaQuery.of(ctx).size.width,
            height: MediaQuery.of(ctx).size.height,
            child: Image.asset('assets/img/background.png', fit: BoxFit.fitHeight)),
          _body(),
        ]) 
      )
    ); 
  }

}