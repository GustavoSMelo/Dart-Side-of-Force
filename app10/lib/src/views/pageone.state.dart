import 'package:flutter/material.dart';

class PageOneState extends State {
  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(
          title: Text('Network Image', textDirection: TextDirection.ltr)
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://flutter.dev/images/flutter-mono-81x100.png'),
              ElevatedButton(onPressed: () {
                Navigator.of(ctx).pushNamed('/page/two');
              }, child: Text('Go to another view', textDirection: TextDirection.ltr,))
            ],
          ),
        )
      )
    );
  }
}