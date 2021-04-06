import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageTwo extends StatelessWidget {
  
  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: AppBar(title: Text('Page Two '), ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Text('Page Two', textDirection: TextDirection.ltr),
              ElevatedButton(onPressed: () {
                Navigator.of(ctx).pushNamed('/');
              }, child: Text('Return to page one' )),
            ]
          ),
        ),
      )
    );
  }
}
