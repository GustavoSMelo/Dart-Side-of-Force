import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageOne extends StatelessWidget {
  Widget build (BuildContext ctx) {
    return (
      Scaffold(
        appBar: 
          AppBar(title: Text('PageOne', textDirection: TextDirection.ltr,), backgroundColor: Colors.deepPurple),
        
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text('Page One', textDirection: TextDirection.ltr),

              ElevatedButton(onPressed: () {
                Navigator.of(ctx).pushNamed('/page/two');
              }, child: Text('Go to page two', textDirection: TextDirection.ltr))

            ],
          ),
        ),
      )
    );
  }
}
